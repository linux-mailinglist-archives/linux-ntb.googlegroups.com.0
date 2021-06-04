Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBQEI5GCQMGQEIONVJFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1B039BB96
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Jun 2021 17:18:25 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id w1-20020a0568304101b02902fc17224cf5sf5458786ott.3
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Jun 2021 08:18:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622819904; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJKTwaCT/VejTp4PfrJaAbXtQUlh6LD5P5XTS0HKg9fwG30Oj3b1ocE9RIrfhgs3iB
         g0AjGJCyIwZ06t369Vn1EcVM3aKYei9XDBO6h4lEBzkj0Ls0jEoAEX8IT4RA8js2BNV2
         NzKdG6oJgaYJOgjPODWEmULIWq9ndR8my5o9IXHamQf1XCWrOp4kJrPgxc4p0t3unn9V
         ZVidr3BL47nDuM0JJIZYJxmykEqggsumPfnEum0NFoC9ATCEa9K0k7dIhXlVsxvtrax0
         H5UtgIbdB9mJPsPFUFXFqBEB7Yz3asuXPQFp4nuCCJBVRlutk03wgVZD9Byzlbyp8fZ/
         sW0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=RwvidOFOaxW0mpwMChfgO3P3sU9J+pEqcXCsWIRODaE=;
        b=CU9AtI8YEOf38szTVM2k4T8tkwxo5R5J+HTnaUa3EnNWLgCNzwD6sqo0opq7Z8R/qh
         E74X2OtnfjVqej2WmdwOYqy1OEapqo+IJg16ijEXPbfjAPSfGDczjv7P26wP9OCuq0Ft
         0DXDKPRTm+Z5ZrgVDwyPLskfwoYv0g80B/v+nYTARY7tc+Hvq0vqhMtpHqwpZFTEGkd3
         4BF1nvz7jEf3s16IP/RmyjUqUp66QobQWRlqJX6DyrNH6+iFcsuaKqLmcNBEBDEGV8yF
         PCDKcQIlezkUbZ0olIs3OuwR0Yr0lp0RrA4oF83gPRmHV6pU94miQ5fPOxNIMdCSoHLE
         dQVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=lJzGdFWU;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RwvidOFOaxW0mpwMChfgO3P3sU9J+pEqcXCsWIRODaE=;
        b=MZk2kSCyr4RpLYvj6AJuLSgoVfNbkXpS8iojJdUzEo0fpEdOTu7kVq75WvhrIM+zKy
         7l0A2QgsxyJ02swL5aemR2gaj3DUREIRKijQV2EnNC51ajWM/HSxWv/jHQjWUC/Byg4e
         xOOcuG1LunUopXDi8rjPYJdesAauG8lSK4bsRDvgK7auNqZa4rNNIUXoVWVbBygtt9iS
         9/K2RGaSP8dPvHs1DtFsFIu33ggvl3pq4NRE6Pa4wMRbEBnaesch5qFht8hxUr6G/Hjj
         xd2Ptd931j57fUNeyUM1TZTyRdpFW9vHOR/BQtR5Yy7sYP5wqRXthG+VeipaGuOSaQXZ
         ZOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RwvidOFOaxW0mpwMChfgO3P3sU9J+pEqcXCsWIRODaE=;
        b=aMRTAlfuCt5HNqzGDD+41vb2USg/dgbqo5iP80CaNI35wLy8RXEeCJ5Zuoe6iz3Dwc
         Tj8GZXJ+TnQZlT185bSUKChYLpdnVtiyu4W2JmOuwmKJLopjLflPifJqKcNvPf722tWh
         du26n1IA/Xo3X7vXjNdmFG7gwfnxdewt8Tz2eknkk8czx5HRFJbaWY3X8UHu17JYXV3s
         5weejgiQ405RoHbNjA3YT85rZ1eKtEp++qX2dAXKTC0mbr5Qc+w/1+ZyZiCsEBuz1uUr
         iCdSYoM8ac/Ld5qwtAlefvIvHHBXi+e9Fhj/8NkyIwkCPYjKOu3hp6YU2QeLrnRNSxlt
         rVyA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ON7M3nhIhaKxWQDgG1s9+t+X+XrCXUXA+JaHBD3DX7Q69C7to
	NB35eZu6F1L4kzsCNwBd1Ck=
X-Google-Smtp-Source: ABdhPJzA3mkbtliBE4rqi5SU3dEO304tlYB857RH6Kt7oej9FwMUl2qicdqVdHGK2cPNUDVa7Bg64w==
X-Received: by 2002:a05:6830:905:: with SMTP id v5mr4068993ott.214.1622819904162;
        Fri, 04 Jun 2021 08:18:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:5c8d:: with SMTP id a13ls2430689oti.0.gmail; Fri, 04 Jun
 2021 08:18:23 -0700 (PDT)
X-Received: by 2002:a05:6830:319a:: with SMTP id p26mr4085221ots.314.1622819903773;
        Fri, 04 Jun 2021 08:18:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622819903; cv=none;
        d=google.com; s=arc-20160816;
        b=EMZ+akUEHuGLRnQ/xPGepZLKiKGYwRRBJswuupNfuCY8/UQ4k0h/A0KjJGPb4Bsq1A
         En7I68FgRuNkA58f2AO9Zx+Bc23dWYM35acAC+MrjdCppRiG2R2XlDf9bJv5HS7Sx8iD
         CR09RJOnqcAhCGP9xi/eDEsPehrAztShsc8vqD2PQt7pk0nOhoew0op9PNTar+iSOj8F
         OD1eNiwrDJgqm2lCH431GJCT1W/56rxBdU8iCsXEfeh4fJ3ak43rw/o3gjZtuasR362H
         gZ6f/Ku11koIAznzoeLsbhW07YWSh/MY5+VxMKnCArRCr0I/rLq67PEMqjkb1H3cVNLO
         qnAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=PJRwd6y2fGkVlRreR6Ar4luPs0i6HG0cPOvCC6J0yjQ=;
        b=dqeSrLgXvPtITfOldk/s4Eduk7rkObUJlGJpMfwlBUut1z7gqkfy8Ks1VD9hrMIdcN
         b8G8veM0HzgnGxGsCY5yskdnBO5GAlOb5ozHMx6WGoNqC+IG3mLk+ozPOPWQnQHn0n2+
         G7rGh+bp35L7mwlhiEZt+2cf/iSIGwQjUKBNP44s+VbHrofiV78Kt2jlpOknaVwXze9x
         hL6a0LWkhMHisJWn5E6ibkd1Qkf0Qm3LRu8row+1w3nqBON3g26lm0lS85hnBWRP79k/
         ddguD/wbBQNAR0MnUUMJ3ol69HrcpjL6B6KfiSeC/Tm/YLEpHhZDeXPBVHdjeJOEtfYC
         VILw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=lJzGdFWU;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id w16si268090oov.0.2021.06.04.08.18.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 08:18:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s0106a84e3fe8c3f3.cg.shawcable.net ([24.64.144.200] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1lpBaX-0002Uu-Ny; Fri, 04 Jun 2021 09:18:22 -0600
To: Yang Li <yang.lee@linux.alibaba.com>, jdmason@kudzu.us
Cc: dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
 <1622802051-43464-2-git-send-email-yang.lee@linux.alibaba.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <490f9031-7a12-6031-7262-f38cd96cb502@deltatee.com>
Date: Fri, 4 Jun 2021 09:18:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <1622802051-43464-2-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.144.200
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, yang.lee@linux.alibaba.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] NTB: Fix an error code in ntb_msit_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=lJzGdFWU;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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




On 2021-06-04 4:20 a.m., Yang Li wrote:
> When the value of nm->isr_ctx is false, the value of ret is 0.
> So, we set ret to -ENOMEM to indicate this error.
> 
> Clean up smatch warning:
> drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing error
> code 'ret'.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/ntb/test/ntb_msi_test.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
> index 7095ecd..5f9e0be 100644
> --- a/drivers/ntb/test/ntb_msi_test.c
> +++ b/drivers/ntb/test/ntb_msi_test.c
> @@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
>  	if (ret)
>  		goto remove_dbgfs;
>  
> -	if (!nm->isr_ctx)
> +	if (!nm->isr_ctx) {
> +		return -ENOMEM;
>  		goto remove_dbgfs;

I think you made a typo here. You probably meant ret = -ENOMEM.

Thanks,

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/490f9031-7a12-6031-7262-f38cd96cb502%40deltatee.com.
