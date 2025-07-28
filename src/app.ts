let count = 0;

export default {  
   async fetch(request: Request): Promise<Response> {
      return new Response("Don't tell him 人´∀｀) hehehe");
   },

   async scheduled(
      controller: ScheduledController,
      env: Env,
      ctx: ExecutionContext,
   ) {
      count++;
      console.log("scheduled count: ", count);
   }
} satisfies ExportedHandler<Env>;