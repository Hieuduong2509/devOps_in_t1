import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '30s', target: 20 }, 
    { duration: '1m', target: 20 },  
    { duration: '30s', target: 0 },  
  ],
  thresholds: {
    http_req_failed: ['rate<0.05'], 
    http_req_duration: ['p(95)<1000'], 
  },
};

export default function () {
  // Đã đổi URL thành tên miền trỏ về Nginx (Instance 1) của bạn
  // Nếu chưa có SSL/HTTPS ở nhánh này, bạn đổi thành http://devoops.shop/api/jobs
  const res = http.get('https://devoops.shop/api/jobs');
  
  check(res, {
    'status is 200': (r) => r.status === 200,
  });

  sleep(1);
}
