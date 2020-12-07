Return-Path: <linux-ntb+bncBDXYVT6AR4MRBANBXH7AKGQER2DS4MY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C932D1532
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Dec 2020 16:55:46 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id y4sf2923707vsl.22
        for <lists+linux-ntb@lfdr.de>; Mon, 07 Dec 2020 07:55:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607356546; cv=pass;
        d=google.com; s=arc-20160816;
        b=zOBrftaVg3LqgsrjoVuC03vB73/aCo0PVhlN/0lLtmuIRjQ1MJk6WF6QLmPqH63Tym
         eLivi6ah1DJ+RsqysADYhjncrzz3U8osk0mo9tVGBA75jIj8gBrv6hOGdgy8TEaYI9Rn
         54rsiHaNKAtmPz1Y0YGwag6arKJnsKT7n2Htf3l73IyJsecgKm1DgDEN4kR/1LnbMTOe
         rze5psZ3wh2hbw/m8HL8N0dycE9D1iwrtfKODwmoPnJ1qbt2Goj4eAEP3xxwTzlatE67
         C16wUukzhv/QP11K/wMO+lSif+1yuCuH/bGKzNPcpv7jnyGuZ6y9hakAZIwfw/KrlnNQ
         H2Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-version
         :dlp-reaction:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=IEHoC9D+okdx9DGXw6vTaYiaUUiXUfnb2vzeW2dY2oQ=;
        b=AUd7Cesr1mUEsBxcl+9TebAHOcnMaPCI28+bVTSXJ9YI7VE/6V69Ua8rjN2YPDhf05
         kPBFfsl5xDhggN5npvNT6vF5t05B4r9PBnSwiSpt8TzwQ3AmnKnNCZqpB2nC+ocfyqMH
         cMDxllJIrvIFWnhL+6SWGLrVT72sRLism0mvhXlQ7hQMdqK9vrBRrdQnCRqcnJW1YXI6
         T/1AEcRefGZUqvTL0mTipxMB55uSMQeqnHkZ0Oh8m4gaYm492nLUteftlmdKJqy+lpdg
         TQm2gdwBh+m921W59E+xIjE2vIaCLxtSbgM5q4lJRS+0aD6leU8kZK8hGGtGWCl7U633
         nvuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-reaction:dlp-version:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IEHoC9D+okdx9DGXw6vTaYiaUUiXUfnb2vzeW2dY2oQ=;
        b=OWlnsQwO1Ci2p6+y/R8s11ASJlS67PsPSmLz4M3mWUjFPbImp6DDEK1uW6HqU8qF/S
         5KyJfmlX9sOVcjjI/6DYMBx92BHVMqzfcqdrd5ts4XNb17UjSTGPY6G6VQMAjdweMjes
         LUQ97B1rGMQpdAUVFkZRhzWZH0UGRQYXdelqy73ORhi9OjPjNh3UbnopblKAVHnVxOSF
         ToHAO2plOd5k6mPvJrvN1nso7aJ08SDtKQA314nZe3pfNptuREDDDzP/C4UDc1KTgm2v
         VOQsMYCZviaszkzTTIHGI4cfCY+oX8/ga5b/ncZyc1KUOoCQEwIUSDkwLJe0wnx+T/Do
         tnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-reaction:dlp-version:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IEHoC9D+okdx9DGXw6vTaYiaUUiXUfnb2vzeW2dY2oQ=;
        b=mM9GnNMfDnzlxDZA1xPv/YP7QCxVcnHw5hhm0BSWi5ID0tZtTvx+j0SJcTW0A1BQyk
         MzVQJ8T5DMesq0RkzHr1tT5FQsT/+klEU+8wdIyfcr92VjerLIVUWbd2NvBGB9RZFrRc
         2g1M6cdkVwlkcAPo0YIcHT0CTPmrYLFxCQA0OYFIm81MMOUKBQnjCnZmq1KJgUN08TDt
         iafuCLQ5LU+etZDgE1kD97z93aDeiGZWxiV/cCBDo0ardRX+fpaICMlh0cduyXUcqdbX
         YXywRviPQKiO13Jg6T2WAsjmRH+dFAr5SttL1zp/fpnWRY9xRKKDuix8L0kI1osl8QTC
         yQZg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532WF8kvBeKAomRHJrkBv38cvC2fKugIWXoPfR2tcH1alQDN1GhV
	MsXxz043d4s1VNXMpz+424c=
X-Google-Smtp-Source: ABdhPJy5vwt/d6TPKxCXJU4B/vZXIbiPlmXSxCPDIsHyxvufakO8pdZ3eFko/fD+F32MM8ysRiZbcQ==
X-Received: by 2002:ab0:5ea8:: with SMTP id y40mr12090301uag.21.1607356545859;
        Mon, 07 Dec 2020 07:55:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:6646:: with SMTP id a67ls2225345vsc.0.gmail; Mon, 07 Dec
 2020 07:55:45 -0800 (PST)
X-Received: by 2002:a67:32c5:: with SMTP id y188mr12517647vsy.4.1607356545388;
        Mon, 07 Dec 2020 07:55:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607356545; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6+eApzPbVN55DeekACdv8l4Ho9nk+kMqpuz1tdWTFHdHfyaW09bJrVxlAWV71JTWL
         owFo/NvdVmc//K0WbT/fvzEwxSVaWtOWfoia8itsBmaKf4HC9AvWneWlEqEG8Rq6rGNR
         Upi1Lb5hgW3CnxTeebBhuUmj0pXLmrvMYXCCP2T9Lt/p9bw31N7YjcBn56PsncWpibtz
         1vll/mLRkJ0QVfAmfyqFrv0hVCWQh4ZqWl2565OlYVOAnWI2DYHpBkjt0BOQHGsLUtg8
         Gdh4ggaUC2JkkcXHxgyHrwjXy0QT4FSovlmd8TLJoDyob5TvpHZIV8TfFTRv4/WuUO+5
         MSzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-version:dlp-reaction
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:ironport-sdr;
        bh=OuEKxjWp+razNiT8qDUqfklTzVBwMyyWrLKOBbUmCDU=;
        b=hhZBeUwAlRwBlgI0DcJ0hFVglhCeLrRUnhTfzYMU6biF5h/bwsceXoV7ErHAlHFx2R
         rIsfj3r6N0sVyv8C7iWStzgPFKm+uhrReGi7z2X4SNA2mtfK4VKCrDmrXoqbl82Hc270
         /goKWT4SbO2MVx8X1BOTRHT7FbbLXsRXPErrNgvON8J+meA7uzCQZdrfZBpd/wXdIgWs
         yN0aqvOasSufbQMhA10fcO59WWotz7oBMOvj3XkuupWF3f+wkzQbScC0z/W3eJOvipBG
         eOsyhT93bqexsCfgwUNvZj6UAWjHId4I/agw0Gcox/kVmvlXkSX7WX3o5drQkjYfoqGz
         +sOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id r207si178396vkf.2.2020.12.07.07.55.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 07:55:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: zAdfeqF7aeIY8yXqskMo53BCBzmFEYw0k+18BbNV4X+pgNcX0ZugutPLzv71uyxd26FnznXysr
 U2eNzWnxGtqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191994282"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; 
   d="scan'208";a="191994282"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2020 07:55:44 -0800
IronPort-SDR: JqljrY7NKgtBF5E9+6jS3K5H6TUX6VVLbAJrVYPKj7ydBZ2garzw5f3kDpSv91V8zX7vC5AqUz
 GsC//KfhRBww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; 
   d="scan'208";a="436832912"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2020 07:55:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 07:55:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 07:55:43 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Mon, 7 Dec 2020 07:55:43 -0800
From: "Jiang, Dave" <dave.jiang@intel.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
	<bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>, Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, Tom Joseph
	<tjoseph@cadence.com>, Rob Herring <robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the local
 or remote side of bridge
Thread-Topic: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the
 local or remote side of bridge
Thread-Index: AQHWuEC9OnGPVEaiTUCW+4PBXB6hF6nr8fOg
Date: Mon, 7 Dec 2020 15:55:43 +0000
Message-ID: <f39cf769993541e2a46bfe4d777ccf46@intel.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-17-kishon@ti.com>
In-Reply-To: <20201111153559.19050-17-kishon@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: Wednesday, November 11, 2020 8:36 AM
> To: Bjorn Helgaas <bhelgaas@google.com>; Jonathan Corbet
> <corbet@lwn.net>; Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo
> Pieralisi <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>;
> Jon Mason <jdmason@kudzu.us>; Jiang, Dave <dave.jiang@intel.com>;
> Allen Hubbe <allenbh@gmail.com>; Tom Joseph <tjoseph@cadence.com>;
> Rob Herring <robh@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; linux-
> pci@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-ntb@googlegroups.com
> Subject: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the local or
> remote side of bridge
> 
> Invoke ntb_link_enable() to enable the NTB/PCIe link on the local or remote
> side of the bridge.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/ntb/test/ntb_tool.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c index
> b7bf3f863d79..8230ced503e3 100644
> --- a/drivers/ntb/test/ntb_tool.c
> +++ b/drivers/ntb/test/ntb_tool.c
> @@ -1638,6 +1638,7 @@ static int tool_probe(struct ntb_client *self, struct
> ntb_dev *ntb)
> 
>  	tool_setup_dbgfs(tc);
> 
> +	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);

The tool expects the user to enable the link via debugfs according to documentation. Is this necessary?

>  	return 0;
> 
>  err_clear_mws:
> --
> 2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f39cf769993541e2a46bfe4d777ccf46%40intel.com.
