import { configureStore } from '@reduxjs/toolkit';
import  authSlice  from '../features/auth/authSlice';
import  cartSlice  from '../features/cart/cartSlice';

export const store = configureStore({
     reducer: {
        //  전역 객체를 포함한 슬라이스(리듀서) 등록
        login : authSlice,
        cart : cartSlice,
     },
})