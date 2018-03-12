FROM debian:stretch as build
RUN touch x && chown 1:1 x

FROM debian:stretch
RUN touch y && chown 1:1 y
COPY --from=build x ./
