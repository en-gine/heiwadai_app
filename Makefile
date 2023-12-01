init-proto:
	git submodule add git@github.com:en-gine/heiwadai_proto.git lib/v1

buf: # protobufコンパイル
	docker compose exec buf buf generate

buf-update: # protoの更新とbufコンパイル
	git submodule update --remote
	@make buf


