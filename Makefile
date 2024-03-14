init-proto:
	git submodule add git@github.com:en-gine/heiwadai_proto.git lib/v1

buf: # protobufコンパイル
	docker compose up -d
	docker compose exec buf buf generate
	docker compose stop

buf-update: # protoの更新とbufコンパイル
	git submodule update --remote
	@make buf


