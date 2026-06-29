import http from 'k6/http';
import { check, sleep } from 'k6';

// 1. Cấu hình kịch bản (Stages)
export const options = {
  stages: [
    { duration: '30s', target: 20 }, // Giai đoạn 1: Tăng dần từ 0 lên 20 người dùng trong 30 giây
    { duration: '1m', target: 20 },  // Giai đoạn 2: Giữ mức 20 người dùng liên tục trong 1 phút
    { duration: '30s', target: 0 },  // Giai đoạn 3: Giảm dần về 0 để kết thúc
  ],
  thresholds: {
    http_req_failed: ['rate<0.05'], // Bài test thất bại nếu tỉ lệ lỗi vượt quá 5%
    http_req_duration: ['p(95)<1000'], // 95% request phải phản hồi dưới 1 giây (1000ms)
  },
};

// 2. Hành động của từng người dùng ảo
export default function () {
  // Gọi trực tiếp vào API của bạn
  const res = http.get('http://50.19.98.81:30000');
  
  // Kiểm tra mã phản hồi có phải 200 OK không
  check(res, {
    'status is 200': (r) => r.status === 200,
  });

  // Mỗi người dùng đợi 1 giây trước khi F5 lại trang
  sleep(1);
}
