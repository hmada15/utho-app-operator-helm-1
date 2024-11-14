# make package VERSION=0.1.6
.PHONY: package
package:
	@sed -i 's|\(version: \)[0-9]*\.[0-9]*\.[0-9]*|\1$(VERSION)|g' Chart.yaml
	@helm package -d pkg .
	@helm repo index .
