import { createParamDecorator, ExecutionContext } from '@nestjs/common';

export const CurrentUser = createParamDecorator(
  (data: unknown, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest<Request & { user: any }>();
    // eslint-disable-next-line @typescript-eslint/no-unsafe-return
    return request.user;
  },
);
