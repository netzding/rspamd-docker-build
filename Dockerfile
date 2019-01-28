ARG alpine_tag=edge
FROM alpine:${alpine_tag}

RUN apk add rspamd rspamd-controller rspamd-fuzzy rspamd-proxy rspamd-client rspamd-utils
ENTRYPOINT ["rspamd", "-f", "-u", "rspamd", "-g", "rspamd", "-c", "/etc/rspamd/rspamd.conf" ]
