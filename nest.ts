/*
npm i --save @nestjs/platform-fastify

npm i --save zod
npm i --save class-validator class-transformer

npm i --save @nestjs/websockets @nestjs/platform-socket.io

npm install prisma --save-dev
npx prisma
npx prisma init
_inPrisma_
_setInEnv_
npx prisma generate
npx prisma migrate dev --name init
npm install @prisma/client
+-------------------+-------------------------------------------------------------------
| prisma.service.ts |
+-------------------+
| import { Injectable, OnModuleInit } from '@nestjs/common';
| import { PrismaClient } from 'generated/prisma';
|
| @Injectable()
| export class PrismaService extends PrismaClient implements OnModuleInit {
|   async onModuleInit() {
|     await this.$connect();
|   }
| }
| // then append it as to parameter of another service
+---------------------------------------------------------------------------------------

npm install --save @nestjs/jwt

npm install --save @nestjs/passport passport passport-local
npm install --save-dev @types/passport-local

npm install --save dotenv @types/dotenv
npm install --save @dotenvx/dotenvx

npm run start
npm new _projectName_
npm run start:dev
npm run lint
npm run format
+---------+------------------------------------------------------------------------------------------------------
| main.ts |
+---------+
import { _MiddlewareName_, _functionMiddlewareName_ } from './_middlewareFile_';
import { _FilterName_ } from './_filterFile_';

async function bootstrap() {
  const app = await NestFactory.create<
    _NestApplication_
    [1] - NestExpressApplication
    [2] - NestFastifyApplication
  >(
    AppModule,
      new FastifyAdapter({
      querystringParser: (str) => qs.parse(str),
    }),
  );
  app.use(_MiddlewareName_ | _functionMiddlewareName_);
  app.useGlobalFilters(new _FilterName_());
  app.useGlobalPipes(new _pipe_(options));
  app.useGlobalGuards(new _guard_());
  app.useGlobalInterceptors(new _interceptor_());
  app.set('query parser', 'extended');                        ===> if (app instanceof NestExpressApplication)
  await app.listen(process.env.PORT ?? 3000);
}
bootstrap();
+---------------+------------------------------------------------------------------------------------------------
| controller.ts |
+---------------+
import type {
  Request,
  Response,
  NextFunction,
} from 'express';

@Controller(_path_ | { host: _host_ })
@UseGuards(_guard_)
@UseGuards(new _guard_())
@UseInterceptors(_interceptor_)
@UseInterceptors(new _interceptor_())
export class _controllerName_ {
  constructor(private readonly _serviceName_: _ServiceName_) {}

  @_method_(_path_)
  [1] - Get
  [2] - Post
  [3] - Put
  [4] - Delete
  @_properties_
  [1] - Session()
  [2] - Ip()
  [3] - HostParam()
  [4] - Params(key?: string)
  [5] - Query(key?: string)
  [6] - Body(key?: string)
  [7] - Headers(name?: string)
  [8] - Header(name?: string, value?: string)
  [9] - Redirect(url: string, statusCode?: number)
  @_handler_
  [1] - UseFilters(...filters: ExceptionFilter[])
  [2] - UsePipes(new _pipe_(options))
  [3] - _DecoratorRolesName_(...roles: string[])
  _functionName_(
    @Req() req: Request,
    @Res() res: Response,
    @Next() next: NextFunction,
    @Query() _classDto_: _classDto_,
    @Query('_id_') _id_: string,
    @Body() _classDto_: _classDto_,
    @Body(key?: string) _body_: _dataType_,
    @Body(new _PipeClassValidationName_()) _classDto_: _classDto_,
    @Param('_id_', _pipe_) _id_: string,
    @HostParam('_id_') _id_: string,
    @Inject('_serviceName_') _serviceName_: _ServiceName_,
  ): string {
    res.status(HttpStatus._status_)._responseMethod_
    [1] - send('_response_')
    [2] - json(_json_)

    throw HttpException('_message_', HttpStatus._status_);
  }
}

_pipe_
[1] - ValidationPipe
[2] - ParseIntPipe
[3] - ParseFloatPipe
[4] - ParseBoolPipe
[5] - ParseArrayPipe
[6] - ParseUUIDPipe
[7] - ParseEnumPipe
[8] - DefaultValuePipe
[9] - ParseFilePipe
[10] - ParseDatePipe
[11] - _PipeZodName_(_dtoSchema_)
[12] - _PipeClassValidationName_()
[12] - new _pipe_(options)
+----------------+------------------------------------------------------------------------------------------------
| gateway.ts     | ===> as controller for WebSocket
+----------------+
import { SubscribeMessage, WebSocketGateway } from '@nestjs/websockets';

@WebSocketGateway(_port_, {
  namespace: '_namespace_',
  transport: [
    'websocket',
  ],
})
export class _GatewayName_ {
  @WebSocketServer()                                                    ===> to access the server instance
  _namespace_: _NamespaceType_;

  @SubscribeMessage('_messageEvent_')
  _functionName_(
    @ConnectedSocket() _client_: _clientType_,
    @MessageBody() _data_: _dataType_,
    @MessageBody('data') _data_: _dataType_,
  ): _returnType_ {
    ...
  }
}
+----------------+------------------------------------------------------------------------------------------------
| service.ts     |
+----------------+
import { Injectable } from '@nestjs/common';
import { _interface_ } from './_interfaceFile_';

@Injectable()
export class _ServiceName_ {
  @_methods_
  [1] - Inject('_data_')
  [2] - Optional()
  private readonly _dataArray_: _interface_[] = [];

  ...
}
+----------------+------------------------------------------------------------------------------------------------
| interface.ts   |
+----------------+
export interface _interface_ {
  _property_: _type_;
  ...
}
+----------------+------------------------------------------------------------------------------------------------
| dto.ts         |
+----------------+
import { z } from 'zod';
import { _Is_Function_ } from 'class-validator';

export const _dtoSchema_ = z.object({
  _property_: z.string()....,
}).required({ _property_: true });

export type _DtoName_ = z.infer<typeof _dtoSchema_>;

export class _DtoName_ {
  _property_: _type_;
  ...
}

export class _DtoName_ {
  @_Is_Function_()
  _property_: _type_;
  ...
+----------------+------------------------------------------------------------------------------------------------
| module.ts      | ===> can use websocket as controller too
+----------------+
import { Module, NestModule } from '@nestjs/common';
import { APP_FILTER } from '@nestjs/core';
import { _ControllerName_ } from './_controllerFile_';
import { _ServiceName_ } from './_serviceFile_';
import { _MiddlewareName_, _functionMiddlewareName_ } from './_middlewareFile_';

const _mockServiceName_ = {
  _methodORproperty_: ...,
};

@Global()                                                                                     ===> optional for global modules to be used across the app one time
@Module({
  imports: [
    _Module_,
    JwtModule.register({
      secret: '_secret_;,
      signOptions: { expiresIn: '60s' },
    }),
    RouterModule.register([
      {
        path: '_path_',
        module: _Module_,
        children: [
          {
            path: '_path_',
            module: _Module,
          },
        ],
      },
    ]),
  ],
  controllers: [_ControllerName_],
  providers: [
    _ServiceName_,
    {
      provide: _ServiceName_,
      useClass: _ServiceClassName_,
    },
    {
      provide: _ServiceName_,
      useValue: _mockServiceName_,
    },
    {
      provide: APP_FILTER,
      useClass: _FilterName_,
    },
    {
      provide: APP_PIPE,                                                                      ===> optional for global pipes
      useClass: _PipeName_,
    },
    {
      provide: APP_GUARD,
      useClass: _GuardName_,
    },
    {
      provide: APP_INTERCEPTOR,
      useClass: _InterceptorName_,
    },
  ],
  exports: [_OtherModule_],
})
export class _ModuleName_ implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer
      .apply(_MiddlewareName_ | _functionMiddlewareName_, ...)
      .exclude(_ControllerName_ | { path: _path_, method: RequestMethod._METHOD_ }, ...)      ===> optional
      .forRoutes(_ControllerName_ | { path: _path_, method: RequestMethod._METHOD_ });
  }
  static _method_(): DynamicModule {         ===> optional for modules that need configuration
    return {
      global: _boolean_,
      module: _ModuleName_,
      providers: [_ServiceName_],
      exports: [_ServiceName_],
    };
  }
}
+----------------+------------------------------------------------------------------------------------------------
| middleware.ts  |
+----------------+
import { Injectable, NestMiddleware } from '@nestjs/common';

@Injectable()
export class _MiddlewareName_ implements NestMiddleware {
  use(req: any, res: any, next: () => void) {
    // middleware logic
    next();
  }
}
+----------------+------------------------------------------------------------------------------------------------
| filter.ts      |
+----------------+
import {
  ExceptionFilter,
  Catch,
  ArgumentsHost,
  HttpException,
  HttpStatus,
} from '@nestjs/common';
import type { Request, Response } from 'express';

@Catch(HttpException)
export class _FilterName_<T> implements ExceptionFilter {
  catch(exception: T, host: ArgumentsHost) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse<Response>();
    const request = ctx.getRequest<Request>();

    const status =
      exception instanceof HttpException
        ? exception.getStatus()
        : HttpStatus.INTERNAL_SERVER_ERROR;

    response.status(status).json({
      statusCode: status,
      timestamp: new Date().toISOString(),
      path: request.url,
    });
  }
}
+----------------+------------------------------------------------------------------------------------------------
| pipe.ts        |
+----------------+
import {
  ArgumentMetadata,
  BadRequestException,
  Injectable,
  PipeTransform,
} from '@nestjs/common';
import { ZodType } from 'zod';
import { plainToInstance } from 'class-transformer';
import { validate } from 'class-validator';

@Injectable()
export class _PipeZodName_ implements PipeTransform {
  constructor(private schema: ZodType<any>) {}

  transform(value: any, metadata: ArgumentMetadata) {
    try {
      const parsedValue = this.schema.parse(value);
      return parsedValue;
    } catch (error) {
      throw new BadRequestException('Validation failed');
    }
  }
}

@Injectable()
export class _PipeClassValidationName_ implements PipeTransform<any> {
  async transform(value: any, { metatype }: ArgumentMetadata) {
    if (!metatype || !this.toValidate(metatype)) {
      return value;
    }
    const object = plainToInstance(metatype, value);
    const errors = await validate(object);
    if (errors.length > 0) {
      throw new BadRequestException('Validation failed');
    }
    return value;
  }

  private toValidate(metatype: Function): boolean {
    const types: Function[] = [String, Boolean, Number, Array, Object];
    return !types.includes(metatype);
  }
}
+----------------+------------------------------------------------------------------------------------------------
| guard.ts       | ===> for anything
+----------------+
import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';
import { Reflector } from '@nestjs/core';

@Injectable()
export class _GuardName_ implements CanActivate {
  constructor(private readonly reflector: Reflector) {}

  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const roles = this.reflector.get(_DecoratorRolesName_, context.getHandler());
    if (!roles) {
      return true;
    }
    const request = context.switchToHttp().getRequest();
    const user = request.user;
    return _booleanFunction_(roles, user.roles);
  }
}
+----------------+------------------------------------------------------------------------------------------------
| decorator.ts   |
+----------------+
import { SetMetadata } from '@nestjs/common';
import { Reflector } from '@nestjs/core';

export const _DecoratorName_ = (...args: string[]) => SetMetadata('_key_', args);
export const _DecoratorName_ = createParamDecorator(
  (data: unknown, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest();
    return request._property_;
  },
);

export const _DecoratorRolesName_ = Reflector.createDecorator<string[]>();
+----------------+------------------------------------------------------------------------------------------------
| interceptor.ts |
+----------------+
import {
  CallHandler,
  ExecutionContext,
  Injectable,
  NestInterceptor,
} from '@nestjs/common';
import { Observable, tap, map, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable()
export class _InterceptorName_<T> implements NestInterceptor<T, _dataType_<T>> {
  intercept(context: ExecutionContext, next: CallHandler): Observable<_dataType_<T>> {
    console.log('_InterceptorName_ - before handling the request');
    return next.handle().pipe(
      [1] - tap(() => console.log('_InterceptorName_ - after handling the request'))
      [2] - map(data => ...)
      [3] - catchError(err => throwError(() => new Error('Error in _InterceptorName_')))
    );
  }
}
*/
