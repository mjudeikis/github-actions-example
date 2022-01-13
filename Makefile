test-unit-ci:
	echo "--> Running the tests"
	go test ./... -v -failfast -coverprofile=profile.cov

test-unit-coverage:
	go tool cover -func profile.cov | grep total: | awk '{print $$3}'
