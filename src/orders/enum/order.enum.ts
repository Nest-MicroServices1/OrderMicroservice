import { OrderStatus } from '@prisma/client';

export const OrderStatusList = [
  OrderStatus.PENDING,
  OrderStatus.DELIVERE,
  OrderStatus.CANCELLED,
];
