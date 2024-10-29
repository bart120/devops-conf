import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
    vus: 2500, //utilisateurs
    duration: '45s' //temps du test
}

export default function () {
    let res = http.get('http://localhost:31125/');
    check(res, {
        'status is 200': (response) => response.status === 200
    });
    sleep(1);
}