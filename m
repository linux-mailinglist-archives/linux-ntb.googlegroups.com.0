Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6UIXT7AKGQE5PX3ICI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB352D2233
	for <lists+linux-ntb@lfdr.de>; Tue,  8 Dec 2020 05:43:40 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id a17sf6104255pls.2
        for <lists+linux-ntb@lfdr.de>; Mon, 07 Dec 2020 20:43:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607402618; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLuKdZIkONo5eLxxbb/hAZGb1xsKJzukMKhPYH05+8CK+NP8d2DzUNuhkyIMfr+0Qo
         zpjx0MsSiSNiAo6fJoh39dY/Ue1ubBvSNuWFgVqMz061PqrvAL+3NqZEyiagsKBP7Rsr
         mbNcwoRC9cAqLtr/U0HC9ZBH7p57UQu1TONbM7JqcqFZ7wjjbt4X+dStTwf3iqrkbiBe
         GVjSNIMW+v2o8kcdGrhFOohotd0AJu4XVhEph3TP4EL+kNneNsRfxH1Y9hqOd29iqsj9
         Mf6LmO5o9OSqscNHZ6KctDpM0eq4VzfQ+0rslKxLsbAgY4qNeYVjk6SBi9i6nnBMZ7S0
         4V7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=4BNXDOuS4uHxPivyx3qqNWR1XlQiSCvzXU5MRTvAd/A=;
        b=Mx0kKNYSJCAmg+8nLSF8sYUGADtz351kPWm0+UoPhEeufj8Bc3An4VmvCdz7T6DnxT
         4H3CpBKX5ApDkmH1+N62ioHbxPTXaFyCD5c0GBmrDyhTbgBqy4Uvr7YlWBEQkqXRSq/9
         l82QXbfTTQP+ZVz0x0/0X05tLTa2ZQ6Cmzs/HxrAsukPHfUpTD5gr//efKZi/htVrzfK
         26p/77rJyIxCYo4WxdHmBRsEiSu8n+QEBsWINdIEImgfTPPsiarZAIkVdHiZt3FQEfft
         nn6dJ7Y1cS8TI63KzQKWcmkDG68NzYK1O2W84t0yh60lFEpfwF439cYvDNQY6qFovzQM
         jL8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZEH0SmMB;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4BNXDOuS4uHxPivyx3qqNWR1XlQiSCvzXU5MRTvAd/A=;
        b=qvajQo/vfmlWJBieVBx0rbY4pMzHuljaBPsq6aAP2Ik9D6q8usXuJPZg9E3s7RgjNa
         HHn/VDKqBsrj5rAEhYxKs3IWOl0YpJVoRQOj40QrOrZD8IZYAb9JghKtPiORnWZdUucm
         AcoyDBdGfMNUfmxuDLWxSrVqBHCWvucC4Exo/zJ2+o2s4kolceMsx1P+QrpR36A8q28q
         CBeXI2OKIes4xgl8yqeqiAcnqUKHmysQarYNvGpD7mFQbLt2tVdFDzjekbtj6lQBJE0J
         RsEWr/L20RyN+uw8UW1grrcmfb5h1uQ3Q1aHPAPd2p+7rFvJrvUicgp8De1oPo892EhZ
         AiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4BNXDOuS4uHxPivyx3qqNWR1XlQiSCvzXU5MRTvAd/A=;
        b=jOx3lFsi42KBMGpeZocWOBeZG19ORx9hqSqNU5OwdsOFoKOQwACVC58cK/jjJNqIrx
         wFNXcRROrAfzcA4/92RLJDdX/er1mtVE+60VXsVj9u6KyjKcnpVziPmCols3vpYX9WTA
         hxi0h+0qkhZvQGwVLMbaoDShyENBPejosjs4nnilDJE+Y3c5SO54Lh1/Ew+DHBdyNIeP
         vy+dveH3PBQ5IReqqEK2lb7hGBmOhRwLPwYWwkEORpuRWquZHaSpWkK8pTxg56HcolDi
         sMXGM36xIoJHCj2t1apnEyi20ENsC/8SwHdAp706F6g1GBZWmu61x6V+J94nWr+hjTGW
         mCaA==
X-Gm-Message-State: AOAM5301B4A8V4HLizmRGxX5MIoPpljmonLKjfnqZDiwd6SIIwnRwXza
	I5fd1FwTE1tXmUUI4KXq1rI=
X-Google-Smtp-Source: ABdhPJwn47wevN/u8pJ+mSrLL9zmKUegz68S84T0PKBxQMFl+Mi7z6DwGyVRVqA9SlXU4NMyZV9w+g==
X-Received: by 2002:a17:902:9049:b029:da:efd6:4c12 with SMTP id w9-20020a1709029049b02900daefd64c12mr10156619plz.12.1607402618555;
        Mon, 07 Dec 2020 20:43:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls6333086pll.0.gmail; Mon, 07
 Dec 2020 20:43:38 -0800 (PST)
X-Received: by 2002:a17:902:a415:b029:d8:f55b:5e9b with SMTP id p21-20020a170902a415b02900d8f55b5e9bmr19819896plq.6.1607402617970;
        Mon, 07 Dec 2020 20:43:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607402617; cv=none;
        d=google.com; s=arc-20160816;
        b=qJ2Td+hbBJ55YKPWqdRXZqYpWG41TXq069rFBxVQks1BLvvr9HdD8bqKZbJUvKvks6
         L35+QW+tn5P/ROvfKm1KoiiqTBB+fgMY6Q6wMJC8C4ieB9+uoXqt4bAhbgh4T8jZcPhj
         IzB3gukr84c/sJlCpzylZZ2Ehd60laW0YMY+qXEkCPhNSV4ukrbLCpkT4YpHPP06TKA3
         VavkBn8jxSx1l0wkEYZxKKLNHUARrSaZH7KdWvnC+RGOUZgv+n3+K19GHKFGuDujiW03
         L9xpJUy8MoiqnKACc6eUErNZhaD058Nd0QhZ5F5c0t/8/RIZXcZfC7SE2XULwoDlZ5QF
         5K6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aORTlvK3UG1DVvDgM/DY4UvAIqUGSMoDP1mLzm2o8/E=;
        b=nSQUa9+Zr6SpCe4m9EJnRdLa83YMTT1fo/9Typv+RAohD56UGFxO3PYyGyNnMiGfkI
         b+tLTU6+PM7MFcis9r7vkz8ea0RoeKngEYBTiluTn5Uqj8YnKg5lTpu7zfC9CU4vv/T6
         aIU3aXVtV04wDLc4mXvUfR+4vLv6Q+MKCHHF1uMtfE01kVefBS7BDIR6q4tY+KoAoHf9
         zioISU/CzIM9aXlQo3cycwKkyysyS6GPSZNTgRhtI965YvlJTFAQotUSk/ivwxcNyFqj
         YDykFlo9QCbCCeAsOk7LFOKpYs0bpK2Gh/xiGCuQfKeRo7Uqvi81GW6Igq2+tJunXTY2
         w3rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZEH0SmMB;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id d1si96637pjo.1.2020.12.07.20.43.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 20:43:37 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0B84hPmG038350;
	Mon, 7 Dec 2020 22:43:25 -0600
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0B84hPGj113582
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 7 Dec 2020 22:43:25 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 7 Dec
 2020 22:43:24 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 7 Dec 2020 22:43:24 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0B84hJbo107231;
	Mon, 7 Dec 2020 22:43:20 -0600
Subject: Re: [PATCH v8 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: "Jiang, Dave" <dave.jiang@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Allen Hubbe <allenbh@gmail.com>, Tom Joseph
	<tjoseph@cadence.com>,
        Rob Herring <robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-16-kishon@ti.com>
 <b63d37bccd4f4afc833fd0b9078c3b89@intel.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <8611fcad-9af7-857e-5aa1-b680aef28db6@ti.com>
Date: Tue, 8 Dec 2020 10:13:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b63d37bccd4f4afc833fd0b9078c3b89@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZEH0SmMB;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Hi Dave,

On 07/12/20 9:27 pm, Jiang, Dave wrote:
> 
> 
>> -----Original Message-----
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>> Sent: Wednesday, November 11, 2020 8:36 AM
>> To: Bjorn Helgaas <bhelgaas@google.com>; Jonathan Corbet
>> <corbet@lwn.net>; Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo
>> Pieralisi <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>;
>> Jon Mason <jdmason@kudzu.us>; Jiang, Dave <dave.jiang@intel.com>;
>> Allen Hubbe <allenbh@gmail.com>; Tom Joseph <tjoseph@cadence.com>;
>> Rob Herring <robh@kernel.org>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; linux-
>> pci@vger.kernel.org; linux-doc@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-ntb@googlegroups.com
>> Subject: [PATCH v8 15/18] NTB: Add support for EPF PCI-Express Non-
>> Transparent Bridge
>>
>> Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
>> This driver is platform independent and could be used by any platform which
>> have multiple PCIe endpoint instances configured using the pci-epf-ntb
>> driver. The driver connnects to the standard NTB sub-system interface. The
>> EPF NTB device has configurable number of memory windows (Max 4),
>> configurable number of doorbell (Max 32), and configurable number of
>> scratch-pad registers.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/ntb/hw/Kconfig          |   1 +
>>  drivers/ntb/hw/Makefile         |   1 +
>>  drivers/ntb/hw/epf/Kconfig      |   6 +
>>  drivers/ntb/hw/epf/Makefile     |   1 +
>>  drivers/ntb/hw/epf/ntb_hw_epf.c | 755
>> ++++++++++++++++++++++++++++++++
>>  5 files changed, 764 insertions(+)
>>  create mode 100644 drivers/ntb/hw/epf/Kconfig  create mode 100644
>> drivers/ntb/hw/epf/Makefile  create mode 100644
>> drivers/ntb/hw/epf/ntb_hw_epf.c
>>
>> diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig index
>> e77c587060ff..c325be526b80 100644
>> --- a/drivers/ntb/hw/Kconfig
>> +++ b/drivers/ntb/hw/Kconfig
>> @@ -2,4 +2,5 @@
>>  source "drivers/ntb/hw/amd/Kconfig"
>>  source "drivers/ntb/hw/idt/Kconfig"
>>  source "drivers/ntb/hw/intel/Kconfig"
>> +source "drivers/ntb/hw/epf/Kconfig"
>>  source "drivers/ntb/hw/mscc/Kconfig"
>> diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile index
>> 4714d6238845..223ca592b5f9 100644
>> --- a/drivers/ntb/hw/Makefile
>> +++ b/drivers/ntb/hw/Makefile
>> @@ -2,4 +2,5 @@
>>  obj-$(CONFIG_NTB_AMD)	+= amd/
>>  obj-$(CONFIG_NTB_IDT)	+= idt/
>>  obj-$(CONFIG_NTB_INTEL)	+= intel/
>> +obj-$(CONFIG_NTB_EPF)	+= epf/
>>  obj-$(CONFIG_NTB_SWITCHTEC) += mscc/
>> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig new
>> file mode 100644 index 000000000000..6197d1aab344
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/Kconfig
>> @@ -0,0 +1,6 @@
>> +config NTB_EPF
>> +	tristate "Generic EPF Non-Transparent Bridge support"
>> +	depends on m
>> +	help
>> +	  This driver supports EPF NTB on configurable endpoint.
>> +	  If unsure, say N.
>> diff --git a/drivers/ntb/hw/epf/Makefile b/drivers/ntb/hw/epf/Makefile
>> new file mode 100644 index 000000000000..2f560a422bc6
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/Makefile
>> @@ -0,0 +1 @@
>> +obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
>> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c
>> b/drivers/ntb/hw/epf/ntb_hw_epf.c new file mode 100644 index
>> 000000000000..3855bb0ecacd
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
>> @@ -0,0 +1,755 @@
.
.
<snip>
.
.
>> +static void ntb_epf_cleanup_isr(struct ntb_epf_dev *ndev) {
>> +	struct pci_dev *pdev = ndev->ntb.pdev;
>> +	struct device *dev = &pdev->dev;
>> +	int i;
>> +
>> +	ntb_epf_send_command(ndev, CMD_TEARDOWN_DOORBELL,
>> ndev->db_count + 1);
>> +
>> +	for (i = 0; i < ndev->db_count + 1; i++)
>> +		devm_free_irq(dev, pci_irq_vector(pdev, i), ndev);
> 
> This is called during shutdown. Does that defeats the purpose of using devm API?

Yeah, here devm_* API is not required since we have to invoke free_irq()
before invoking pci_free_irq_vectors(). Will change this to non devm API.

Thank You,
Kishon

> 
> - Dave
> 
>> +	pci_free_irq_vectors(pdev);
>> +}
>> +
>> +static int ntb_epf_pci_probe(struct pci_dev *pdev,
>> +			     const struct pci_device_id *id) {
>> +	enum pci_barno peer_spad_reg_bar = BAR_1;
>> +	enum pci_barno ctrl_reg_bar = BAR_0;
>> +	enum pci_barno db_reg_bar = BAR_2;
>> +	struct device *dev = &pdev->dev;
>> +	struct ntb_epf_data *data;
>> +	struct ntb_epf_dev *ndev;
>> +	int ret;
>> +
>> +	if (pci_is_bridge(pdev))
>> +		return -ENODEV;
>> +
>> +	ndev = devm_kzalloc(dev, sizeof(*ndev), GFP_KERNEL);
>> +	if (!ndev)
>> +		return -ENOMEM;
>> +
>> +	data = (struct ntb_epf_data *)id->driver_data;
>> +	if (data) {
>> +		if (data->peer_spad_reg_bar)
>> +			peer_spad_reg_bar = data->peer_spad_reg_bar;
>> +		if (data->ctrl_reg_bar)
>> +			ctrl_reg_bar = data->ctrl_reg_bar;
>> +		if (data->db_reg_bar)
>> +			db_reg_bar = data->db_reg_bar;
>> +	}
>> +
>> +	ndev->peer_spad_reg_bar = peer_spad_reg_bar;
>> +	ndev->ctrl_reg_bar = ctrl_reg_bar;
>> +	ndev->db_reg_bar = db_reg_bar;
>> +	ndev->dev = dev;
>> +
>> +	ntb_epf_init_struct(ndev, pdev);
>> +	mutex_init(&ndev->cmd_lock);
>> +
>> +	ret = ntb_epf_init_pci(ndev, pdev);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to init PCI\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = ntb_epf_init_dev(ndev);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to init device\n");
>> +		goto err_init_dev;
>> +	}
>> +
>> +	ret = ntb_register_device(&ndev->ntb);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to register NTB device\n");
>> +		goto err_register_dev;
>> +	}
>> +
>> +	return 0;
>> +
>> +err_register_dev:
>> +	ntb_epf_cleanup_isr(ndev);
>> +
>> +err_init_dev:
>> +	ntb_epf_deinit_pci(ndev);
>> +
>> +	return ret;
>> +}
>> +
>> +static void ntb_epf_pci_remove(struct pci_dev *pdev) {
>> +	struct ntb_epf_dev *ndev = pci_get_drvdata(pdev);
>> +
>> +	ntb_unregister_device(&ndev->ntb);
>> +	ntb_epf_cleanup_isr(ndev);
>> +	ntb_epf_deinit_pci(ndev);
>> +	kfree(ndev);
>> +}
>> +
>> +static const struct ntb_epf_data j721e_data = {
>> +	.ctrl_reg_bar = BAR_0,
>> +	.peer_spad_reg_bar = BAR_1,
>> +	.db_reg_bar = BAR_2,
>> +};
>> +
>> +static const struct pci_device_id ntb_epf_pci_tbl[] = {
>> +	{
>> +		PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_J721E),
>> +		.class = PCI_CLASS_MEMORY_RAM << 8, .class_mask =
>> 0xffff00,
>> +		.driver_data = (kernel_ulong_t)&j721e_data,
>> +	},
>> +	{ },
>> +};
>> +
>> +static struct pci_driver ntb_epf_pci_driver = {
>> +	.name		= KBUILD_MODNAME,
>> +	.id_table	= ntb_epf_pci_tbl,
>> +	.probe		= ntb_epf_pci_probe,
>> +	.remove		= ntb_epf_pci_remove,
>> +};
>> +module_pci_driver(ntb_epf_pci_driver);
>> +
>> +MODULE_DESCRIPTION("PCI ENDPOINT NTB HOST DRIVER");
>> +MODULE_AUTHOR("Kishon Vijay Abraham I <kishon@ti.com>");
>> +MODULE_LICENSE("GPL v2");
>> --
>> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8611fcad-9af7-857e-5aa1-b680aef28db6%40ti.com.
