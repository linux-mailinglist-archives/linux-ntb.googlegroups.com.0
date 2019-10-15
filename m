Return-Path: <linux-ntb+bncBDGNZTVZVAFRBJVGTDWQKGQE47NFLWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 483F4D7F39
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Oct 2019 20:42:47 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id b204sf8637984vkb.11
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Oct 2019 11:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571164966; cv=pass;
        d=google.com; s=arc-20160816;
        b=pODIEgnJm8v3ISx9/leMvQEXfrhu7uLrT96Hg3Jk8G3rh6wv0FRF+atxnzLJx46hnB
         7H7cGSOuYXK95bZs9MxTqswt0jjoxjE7aXfOJlp+j2EUtKAAE/PmAppC8Cr8n1r17L+o
         cBWqedLx0tk7BCYVmYC6I81ATATHC1FxCLr/mCuFB68KVyXlZ6i9HFylMH0o0Rv6zjyQ
         cc9l1nsEBdrhpUFUxAHiRQyTQSMVia/ZaFXAJG9ghLH8I4e4aP3V/o0+RSEOr6i+gbgD
         paHqAnnfdETH+a03Ptn2zH2EPRiVUsPE6SEaPc7ZZPmPGqxn2oD1HFLT9IMyUOrhGkaA
         SMOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b2h358iKXwZ/wSWEBsiukdyeTRcxG6xGEyOFAPPTyM0=;
        b=Gbs21spx1VzF0kNm+QfraeN/xqhSUvUvXJDoge4j1PFnsYzPvMRaXmZyHu6wdiBhbx
         W8DqS/BjSpTGbxuWck7iiF76pySmjtCy/4tG95dsgir92212Ld3KiHO4LWVhpY60AVIz
         ucU1qwUIoF2OKJ6QpT950lCWHtVs5n4sN77iVyQTdA8H3yxw1tQJMVsiQMmvU4qMR9VY
         tqvEPBq+Gqznde20caF+X7U3Yv33nhdNJnWLACJaKHNgbLOvpA5zZkS7kgqA+Qcq0ZvT
         5k6FD4oU8lxN/5lo57T0MObpG44dA04S+nBdRNX/7ZSBTQ18TqU9HATcWxpEUpaaHbAo
         eM0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b2h358iKXwZ/wSWEBsiukdyeTRcxG6xGEyOFAPPTyM0=;
        b=itsEMMLOyShEU3M5wNJaH6bkJc3lzN36oWHgRylH3+/4mwdWBxAjqh82aQQhzkiUO/
         8PWqmhDPQCkprXmTfMnF8/TOJwVUc07D1kBAPClOdNC/6ZPVBAgCfBel1ZVio6pv1W+g
         RFgVKwHSgk5O21k7RQ4vvDYuOoYBqnxB+aJPsvig3fpd20rxEewuJQVA5kUkIGDfOWUO
         3llTGcbZDy+sHjmtUZdXRq/hIm2ca4dcnPjiTwxiR56a/19Ytfzpxb8w6A10VGtoLbMW
         wvMs/wzBjLYBamkyMrLfh451XvQ2IEsFvEMM5SLq5ERYf9dqjXRAXvzAIs0SpH4sB5+R
         6wTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b2h358iKXwZ/wSWEBsiukdyeTRcxG6xGEyOFAPPTyM0=;
        b=j55rXCDcCr02IJAD9mDjAcz3Mr8vF5XYK10bkZnLBieLJL17k24sYbNn5pjl+C7fKs
         /LObLmIbGcZOhxDkoNqdHyc4wQjAyRZIHqPjTgIFtHAjvWp/IvognLKvPokF/1ATz50i
         GDx7F7aZaJf5pr2OOygx1GxCB0pZvtMV1C2wYEE581S35qjCLEAkRWVKPDT6ewbwgmb9
         nZG7zSBtDZ8a01doHkHQggloWq97y7YTxuV60Xr+In5wwmzjLyX8G/Ed7UU0wjfy/77Q
         yOOxgy8rLFomOblCbn1+qrhUncrEBPurorrp+mS2mD0qtZ7sxSZpfzysUrxxFYDyNe5k
         HkNQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVGKk9AqQLOzP/qJ2s+JuAfs7046fBZRbLuCxdRAokxnNFYVZkX
	DtMfIpQ7pSO674NBZOrur6w=
X-Google-Smtp-Source: APXvYqztaIRVi7p3psr1dpbzJ96i727TPC6Yg2Vr7xNs7RnFT5s1zlbtDwsl/Vun2npLXx4YXvbPeQ==
X-Received: by 2002:a67:e1d3:: with SMTP id p19mr20548586vsl.212.1571164966116;
        Tue, 15 Oct 2019 11:42:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f491:: with SMTP id o17ls1873317vsn.16.gmail; Tue, 15
 Oct 2019 11:42:45 -0700 (PDT)
X-Received: by 2002:a67:d71e:: with SMTP id p30mr21091201vsj.131.1571164965694;
        Tue, 15 Oct 2019 11:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571164965; cv=none;
        d=google.com; s=arc-20160816;
        b=KAJEAN0lerlpruCaEbJItq2wt6UppBIL39sn7n+J+uuuX+YkH+Im3j6+5shPNWs+VR
         7c4KB+fq0T+SoNiolgMtCuJNuMD3qIeoa5Z6UxcXcHFN6u8nXm7LM0IL5u6olC2M0DNJ
         M6L7cr6uLLLqv/egzowTvGPONaYwv0TSpMi4b9fLjsFyCd36hx3Mqgq9MO07AbyOCu+0
         iklsiXL5fusou8E6zHkIDa/JM06LuXellx7Zn1ZvxI/7VCWJ08Pc1XcjoCcVTFY5fOAm
         0+ifSLG7Apke/6Gu/91RBX3hlDe8DK7ljaTeaWEpcQZZowbRQMkAnzUF6Yd2+RYPUd4b
         R76w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GAHrLiAFlazwlF31Anvci8d6QY+LhAJg86S630nwFns=;
        b=q5FMfwLe4lGLC8FLmaEn7X16su9QV05o5/i6ovqWAmQaQigUWgLgSFfF2nNPLvsYNZ
         jVkcz9+aeBZvmJxu1dZiIiwLvxtRjI7NBA7sejKR1SK0qCu2tXEXjqKdXaBBsJmHlugu
         pGl4cEwSA1X4cS0xCrFR6m+mnn3rcA/9EvWrzQfKQw+7ZiMn0Hcp1nkivmWsS1TMo2vD
         /DkHtgh1d1uATpuxi5dp6G6cXZkd2n0qvVnHdXF0KcV7Gh39dqowotK1Qp6PMStYva+Z
         vWCMFIIj1t6CNwDidc+XLQQMJE4aoXeLSYFZbd9k9773T5oP+W8TCqkJqunv1A+3FW8+
         tXCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.167.194 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com. [209.85.167.194])
        by gmr-mx.google.com with ESMTPS id y14si818052vsj.2.2019.10.15.11.42.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 11:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of robherring2@gmail.com designates 209.85.167.194 as permitted sender) client-ip=209.85.167.194;
Received: by mail-oi1-f194.google.com with SMTP id w6so17683572oie.11
        for <linux-ntb@googlegroups.com>; Tue, 15 Oct 2019 11:42:45 -0700 (PDT)
X-Received: by 2002:aca:d19:: with SMTP id 25mr15150oin.64.1571164964933;
        Tue, 15 Oct 2019 11:42:44 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l19sm6293550oie.22.2019.10.15.11.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 11:42:44 -0700 (PDT)
Date: Tue, 15 Oct 2019 13:42:43 -0500
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Mark Rutland <mark.rutland@arm.com>, linux-pci@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [RFC PATCH 02/21] dt-bindings: PCI: Endpoint: Add DT bindings
 for PCI EPF Device
Message-ID: <20191015184243.GA10228@bogus>
References: <20190926112933.8922-1-kishon@ti.com>
 <20190926112933.8922-3-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190926112933.8922-3-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robherring2@gmail.com designates 209.85.167.194 as
 permitted sender) smtp.mailfrom=robherring2@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Sep 26, 2019 at 04:59:14PM +0530, Kishon Vijay Abraham I wrote:
> Add device tree bindings for PCI endpoint function device. The
> nodes for PCI endpoint function device should be attached to
> PCI endpoint function bus.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/pci/endpoint/pci-epf.txt         | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt

This and the previous patch for the bus should be combined and please 
convert to a schema.

> 
> diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
> new file mode 100644
> index 000000000000..f006395fd526
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
> @@ -0,0 +1,28 @@
> +PCI Endpoint Function Device
> +
> +This describes the generic bindings to be used when a device has to be
> +exposed to the remote host over PCIe. The device could be an actual
> +peripheral in the platform or a virtual device created by the software.
> +
> +epcs : phandle to the endpoint controller device
> +epc-names : the names of the endpoint controller device corresponding
> +	    to the EPCs present in the *epcs* phandle

Other than the NTB case, I'd expect the parent device to be the 
controller. Let's make NTB the exception...


> +vendor-id: used to identify device manufacturer
> +device-id: used to identify a particular device
> +baseclass-code: used to classify the type of function the device performs
> +subclass-code: used to identify more specifically the function of the device

Are these codes standard?

Powerpc has "class-code" already...

> +subsys-vendor-id: used to identify vendor of the add-in card or subsystem

Powerpc has "subsystem-vendor-id" already...

> +subsys-id: used to specify an id that is specific to a vendor
> +
> +Example:
> +Following is an example of NTB device exposed to the remote host.
> +
> +ntb {

This is going to need some sort of addressing (which implies 'reg')? If 
not, I don't understand why you have 2 levels.

> +	compatible = "pci-epf-ntb";
> +	epcs = <&pcie0_ep>, <&pcie1_ep>;
> +	epc-names = "primary", "secondary";
> +	vendor-id = /bits/ 16 <0x104c>;
> +	device-id = /bits/ 16 <0xb00d>;

These have a long history in OF and should be 32-bits (yes, we've let 
some cases of 16-bit creep in).

> +	num-mws = <4>;

Doesn't this apply to more than NTB?

Can't you just get the length of 'mws-size'?

> +	mws-size = <0x100000>, <0x100000>, <0x100000>, <0x100000>;

Need to support 64-bit sizes?

> +};
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191015184243.GA10228%40bogus.
