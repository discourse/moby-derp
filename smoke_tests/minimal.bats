load test_helper

@test "Minimal pod creation" {
	config_file <<-'EOF'
		containers:
		  bob:
		    image: busybox:latest
		    command: sleep 600
		  ziggy:
		    image: busybox@sha256:bde48e1751173b709090c2539fdf12d6ba64e88ec7a4301591227ce925f3c678
		    command: sleep 600
		common_labels:
		  moby-derp-smoke-test: ayup
EOF

	run $MOBY_DERP_BIN $TEST_CONFIG_FILE

	[ "$status" = "0" ]
	container_running "mdst"
	container_running "mdst.bob"
	container_running "mdst.ziggy"
}
