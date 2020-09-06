import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
var fs = require('fs');
const httpsOptions ={
	key:fs.readFileSync('/etc/letsencrypt/live/stacks.fyi/privkey.pem'),
	cert: fs.readFileSync('/etc/letsencrypt/live/stacks.fyi/fullchain.pem'),
};
async function bootstrap() {
  const app = await NestFactory.create(AppModule, {
httpsOptions,
});
app.enableCors()
  await app.listen(3001);
}
bootstrap();
