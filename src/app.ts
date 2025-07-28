let count = 0;

export default {  
   async fetch(request: Request): Promise<Response> {
      return new Response("OK");
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