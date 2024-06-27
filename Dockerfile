FROM elixir:1.16.3-alpine


WORKDIR /app


COPY . ./

# install hex + rebar
RUN mix local.hex --force && \
    mix local.rebar --force

ENV MIX_ENV=prod    

RUN mix deps.get
RUN mix release

CMD ["/app/_build/prod/rel/goal_getter/bin/goal_getter", "start"]
