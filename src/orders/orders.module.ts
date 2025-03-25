import { Module } from '@nestjs/common';
import { OrdersService } from './orders.service';
import { OrdersController } from './orders.controller';
import { NatsModule } from 'src/transports/nats.module';

@Module({
  controllers: [OrdersController],
  providers: [OrdersService],
  //configiracion al microservicio de Products-ms mediante TCP
  imports: [NatsModule ],
})
export class OrdersModule {}
