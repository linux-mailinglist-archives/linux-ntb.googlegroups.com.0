Return-Path: <linux-ntb+bncBCOOP4VF5IDRBD6BTLWQKGQEINCSVAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E60DD879E
	for <lists+linux-ntb@lfdr.de>; Wed, 16 Oct 2019 06:46:08 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id u123sf9175130vkf.8
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Oct 2019 21:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571201167; cv=pass;
        d=google.com; s=arc-20160816;
        b=ALELFEY9AeaEnH2VgCY1d6w+SrtKarlCWl9s3sup9ZK4CwO1l1M0vbXFjfdUl0hi7R
         GKKTfavVK0rUitedZVI9VnZJ9EsNPjBGa/qLkIWSEsmCSvLcvQ7C2Aw6aSsKUnFg/UyV
         IaIFB+AB5UBJ/FvtmMsFGVwd4k3G7eMw8FF0edmQKaaLLEHqZdGcdtC0X3kPT6XPDLdz
         X0AgJ02tRI96Q69m/ADtJYxVBga80SyyVVLxRWcXHQGxPsp+TuhvVRgA0TocpRhsf7sx
         XGFjWmxBomwZumN4Mo+13CZ5SkycZ+/MlXB5PWEVvm3Hv5vhUSnFl9Q2QeKCD+7L0naX
         T5tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=JStNUhoTR7/lERDHP7UqYsZem3u8R8WyKWTOh40b0wA=;
        b=mcBNuSsj3/UfKeoc5abdjKIvfLET3fn6vaAZXX5xa/1Z4dCS5Xy9eHpItrSQ9m+5K6
         myKIhxuc2eC9hS91+mlkGVp0JSfKuaX0Lif/XE0PklMlCVH8aVGGzGZDH2iMOlQWfdat
         aeUSl+hdu2GtfW46HYd9Iug6OogtnUVue24avBLpNpB7Vf86nFfMfkWInEQhreWNZkl+
         vsfrKmPzDSDvFOG1pV/op7ZPeV4zne+Chi3BCf4Rd0eS7gfannGzq78cYSEDN46eIM8A
         QTBLcgSpHG86h4vsX2osz7o3E5FQEAXFbWhU8Hv+AoFltmRRVwwINxTWCXZNFroD6Vh+
         th2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=SfJcnijl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JStNUhoTR7/lERDHP7UqYsZem3u8R8WyKWTOh40b0wA=;
        b=IOcb9ElLBLlByzoW8yoc0x4Gagw9+ATwXBHXG3Nhzorj9c6Sw2H15SgeAuFygSruGD
         5ESjDsCwgUvWXVvt18XH0u0KIGLSvmO7o12p+pXsmjpk9WN/XLbcKphEmzWfmiIwMtTD
         XETnNthIhJbvyChelt1RYEjM8F7Dhn1QVbncWa8df52HF+FbPirzdEJCsm+nkDTsaM43
         1Js680gkR9hVSY0OQtHYPRFW37x1Zz7FKlbU9usNa1pd/NYUfJjAs1PxTiRnSnXewEaV
         sMZ7vmBqnLRHRXWCPgqa9+G12cIElewGLEu/N4N2WLesJqtpxx5kiFy6kfZidhMFWEKT
         s80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JStNUhoTR7/lERDHP7UqYsZem3u8R8WyKWTOh40b0wA=;
        b=PP2sg/Lx47CXZ+uXOYxnLDCk42fylOa62waUkCG753VT1tyIgeGY7yzeKANdm44oY7
         g11ZafKWMgkVz7NMbqJkS7ta08wYlOGFE7AiplZvNKSggQGleYNxqcNRiK9TzW+PkNwh
         5Z8x685L0eQxhM7FIbXPoBUw3r3J0N797yxf898ja7uWssYkbMFt3mfZbQLRI3KTlqgx
         SD7KnpaQzO8r7WgH2uZ7+aZ9zF6uc+hpCzITA6qd8ANA9PM6NWjoqjyFO4LfziMh0UmB
         q9Ffg7Gn1RF6aTfKC3DaXlWz6ldsytpcAQGb4BB35Ge4d4JJlclkTdVjPgFJQUsU+FEU
         cWSg==
X-Gm-Message-State: APjAAAV5lVItWl2pFUX4QDQjoWYUQAJ0B0r8xHhZFzJsRHdvCBANSSe5
	JgQwWTkWADbsMJWpPxbBsBo=
X-Google-Smtp-Source: APXvYqyEBEv1kmJRQO254codGP6MJPNSyxZ9sMtOhYZwysUe6c87loG4IUZ/FwdkVXWM3VxNMWqk1g==
X-Received: by 2002:a05:6102:313b:: with SMTP id f27mr23311127vsh.22.1571201167377;
        Tue, 15 Oct 2019 21:46:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:4f86:: with SMTP id d128ls747275vkb.5.gmail; Tue, 15 Oct
 2019 21:46:07 -0700 (PDT)
X-Received: by 2002:ac5:c95a:: with SMTP id s26mr12704359vkm.6.1571201167029;
        Tue, 15 Oct 2019 21:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571201167; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3CU+7Ke2oMqyPqcJx0TOqY9b/eJVoyMBhIuijrRrOB0dXfwGCY3bYKffQ5608HZw0
         QjskN3fP25QbSk6SRGVXrj5bkk62z84iYz3XDpTc3x1e5TfH/tijKNfSmwZOGYPnlzjs
         mJ2+8W/eyUyvw+22ku9en0vCBjo49zkHIp4N/necr//Y/nBfeBwgUwijM0AkMMqO/3ii
         Q6B4q/LTOnOqhk+2a6lAEycwjJxAdpdkVfvUUSLIW02RpRAR8eztAPStL0uPcZrC0zSl
         V9l2OQ0oguPUGfiPG4loZU0XNMELqxpztDTVcvf1fiKbjpT2zmdzOxEcg3IpLPFjZknj
         Qb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2e1ep+jz9ThULjwuPHURE/WBfxKsgQ0iJmPcL/PVeZo=;
        b=JzPrD2uFh1dvHhJNm3LzNRe4PaEajCdT97CjWdTujlUXA4sVX6ybIJkTjoxrQi5XPs
         aTrISDLyHL/bssxJ/NHZwn6oAT9vVx4dqKotXkgxEr5KtYAylIhALPi3wemtABBtgsQh
         Rtgovsgj/eqDVNkme7ktDyoPRhtmGVKWIucc906fZN0JYkXvXtFpgWhe+RW4zuYz3rZx
         Y5ww1BoLLz7JiSk3cQyxxKO78NhBCB3eZHuoOekbE+7WiYiK56BA2XE2IL0n2kQmBeZ6
         6HMsWp8/IEDQ6KLozVk/iPkNM31IQiJBry3Fhi0hEMeo+DlaZwa+AAgiNrZFaUoyqVor
         qj1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=SfJcnijl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id p18si217155vsn.1.2019.10.15.21.46.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 21:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G4k1Q9130349;
	Tue, 15 Oct 2019 23:46:01 -0500
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9G4k1NQ001573
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 15 Oct 2019 23:46:01 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 15
 Oct 2019 23:45:54 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 15 Oct 2019 23:46:00 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G4jqTh107770;
	Tue, 15 Oct 2019 23:45:54 -0500
Subject: Re: [RFC PATCH 02/21] dt-bindings: PCI: Endpoint: Add DT bindings for
 PCI EPF Device
To: Rob Herring <robh@kernel.org>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe
	<allenbh@gmail.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Mark
 Rutland <mark.rutland@arm.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20190926112933.8922-1-kishon@ti.com>
 <20190926112933.8922-3-kishon@ti.com> <20191015184243.GA10228@bogus>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <af3483e0-0533-4b13-64d1-b2cd6fedf514@ti.com>
Date: Wed, 16 Oct 2019 10:15:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015184243.GA10228@bogus>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=SfJcnijl;       spf=pass
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



On 16/10/19 12:12 AM, Rob Herring wrote:
> On Thu, Sep 26, 2019 at 04:59:14PM +0530, Kishon Vijay Abraham I wrote:
>> Add device tree bindings for PCI endpoint function device. The
>> nodes for PCI endpoint function device should be attached to
>> PCI endpoint function bus.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  .../bindings/pci/endpoint/pci-epf.txt         | 28 +++++++++++++++++++
>>  1 file changed, 28 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
> 
> This and the previous patch for the bus should be combined and please 
> convert to a schema.

Sure Rob. Thanks for the review.

-Kishon
> 
>>
>> diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
>> new file mode 100644
>> index 000000000000..f006395fd526
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
>> @@ -0,0 +1,28 @@
>> +PCI Endpoint Function Device
>> +
>> +This describes the generic bindings to be used when a device has to be
>> +exposed to the remote host over PCIe. The device could be an actual
>> +peripheral in the platform or a virtual device created by the software.
>> +
>> +epcs : phandle to the endpoint controller device
>> +epc-names : the names of the endpoint controller device corresponding
>> +	    to the EPCs present in the *epcs* phandle
> 
> Other than the NTB case, I'd expect the parent device to be the 
> controller. Let's make NTB the exception...
> 
> 
>> +vendor-id: used to identify device manufacturer
>> +device-id: used to identify a particular device
>> +baseclass-code: used to classify the type of function the device performs
>> +subclass-code: used to identify more specifically the function of the device
> 
> Are these codes standard?
> 
> Powerpc has "class-code" already...
> 
>> +subsys-vendor-id: used to identify vendor of the add-in card or subsystem
> 
> Powerpc has "subsystem-vendor-id" already...
> 
>> +subsys-id: used to specify an id that is specific to a vendor
>> +
>> +Example:
>> +Following is an example of NTB device exposed to the remote host.
>> +
>> +ntb {
> 
> This is going to need some sort of addressing (which implies 'reg')? If 
> not, I don't understand why you have 2 levels.
> 
>> +	compatible = "pci-epf-ntb";
>> +	epcs = <&pcie0_ep>, <&pcie1_ep>;
>> +	epc-names = "primary", "secondary";
>> +	vendor-id = /bits/ 16 <0x104c>;
>> +	device-id = /bits/ 16 <0xb00d>;
> 
> These have a long history in OF and should be 32-bits (yes, we've let 
> some cases of 16-bit creep in).
> 
>> +	num-mws = <4>;
> 
> Doesn't this apply to more than NTB?
> 
> Can't you just get the length of 'mws-size'?
> 
>> +	mws-size = <0x100000>, <0x100000>, <0x100000>, <0x100000>;
> 
> Need to support 64-bit sizes?
> 
>> +};
>> -- 
>> 2.17.1
>>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/af3483e0-0533-4b13-64d1-b2cd6fedf514%40ti.com.
