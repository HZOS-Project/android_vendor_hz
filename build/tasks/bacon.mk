# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
# Copyright (C) 2018,2020 The PixelExperience Project
# Copyright (C) 2024 The HZOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -----------------------------------------------------------------

# HZOS OTA update package
HZ_TARGET_PACKAGE := $(PRODUCT_OUT)/$(HZ_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum
MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(HZ_TARGET_PACKAGE)
	$(hide) $(MD5) $(HZ_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(HZ_TARGET_PACKAGE).sha256sum
	$(hide) $(MD5) $(HZ_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(HZ_TARGET_PACKAGE).md5sum
	$(hide) ./vendor/hz/build/tasks/createjson.sh $(TARGET_DEVICE) $(PRODUCT_OUT) $(HZ_VERSION).zip $(HZVERSION)
	@echo -e ${CL_CYN}""${CL_CYN}
	@echo -e ${CL_CYN}"===========-Package Completed-==========="${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Zip: "${CL_YLW} $(HZ_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"MD5: "${CL_YLW}" `cat $(HZ_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1` "${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"SHA256: "${CL_YLW}" `sha256sum $(HZ_TARGET_PACKAGE) | cut -d ' ' -f 1` "${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Size: "${CL_YLW}" `ls -l $(HZ_TARGET_PACKAGE) | cut -d ' ' -f 5` "${CL_RST}
	@echo -e ${CL_CYN}"==========----- <3 Thanks -.- -----=========="${CL_RST}
	@echo -e ""