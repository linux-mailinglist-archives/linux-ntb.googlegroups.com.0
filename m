Return-Path: <linux-ntb+bncBDV2D5O34IDRBOF3SP5QKGQE5CY5TGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8B32701F3
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 18:18:01 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id l15sf2316277wro.10
        for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 09:18:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600445881; cv=pass;
        d=google.com; s=arc-20160816;
        b=kipyI1Xa87ammrvl/jg73WjKNNwbq9xAwkN/pMt+JOp9y/O6aON17C/hul9rhnzZxc
         KyCZODuEHixSEMkNt37zm37yVy48KyyRGRET5Nm0JnyX3sgYpef5MRa8jcEcDAaJ150D
         K6BgvX7ajrF8yDvbOX5XyUJDBl0LwjgBRJ/uKwR3iQMTazqksElX/j4Wd/q/4i06MCeE
         xGeR4HN2zb1kA8k6ZCR7zII3vTfAP7IeIK5LclVsH5WXZ1TAcnENMwun/1bxMyjUZP4I
         LSp39KFq7bbFIgp7oexA7Eae1IgTk/mr6WHXgUVCtQOrddX08egtgDGfDxCfrUZMKy3g
         j3xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qbmQIZosjRtiHH8LlfI+sJ3VRvoaK37XKG+VcPQ1F3w=;
        b=s9sKXnrwrgBBNGtDBwRorHmkLJg7VfbjO5jj3D7PIkF4zeB02hlBZLcCLpdDAtBmFi
         g264G9WjWXUYTR/dSBaHRz6rC29jLYuQdTTuD+JiLe0wQ8veXgIYcYKbnqdR6OC/KhEV
         TDUWf85DUd2Ln8w5clI5M8gcbcVesNiDhIzJ9qGH4MD7qwy090AGVXFg7Kwn/rhodlVL
         y/AtUsaZtCUWYWhyAf6FZ4zYs7H8Fj39BF73OKiOTA1v9bhq7qrE/KqHXEgtt8iBPJ9g
         ILRBUe1ZzH9E47fPaYUOCAk0NBqDAtDmFG2T5dmMpYH0BxXIqV10pCZqjy8pJ1mAE7P2
         zztw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X4vERyHq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qbmQIZosjRtiHH8LlfI+sJ3VRvoaK37XKG+VcPQ1F3w=;
        b=NawLPj0Vh7qaBWqFafDStg/0rVAihu/809xb3bgx7+j2HCgKE2qaktprIQZyy0XyDz
         jM0LN/viQR6VzlS2O2Jjt59lqRr+z18xNuY7OFUfgu7QEdzuFoUwX2/JI9zJ81RynmXA
         UzEvpcLRtk/0BdqmbnZIkI8mEFJs164mLrY01p7wGaDqZhg2zyeQggRY80zm9WZutoXB
         2129JUSIOVmtYo+fvaX22DThvIpE6VIBKXlZTX0gy616QZIiC6YiUJM85KOntsOiEtMv
         3/v80LDYeKPKJgxv2by3EJeW6ffwCwkKizDBBFyDQ/nUyYPyAhaNsHg/xuK7+AIO12bl
         QSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qbmQIZosjRtiHH8LlfI+sJ3VRvoaK37XKG+VcPQ1F3w=;
        b=Jn0R0/0/eq3aBdXa71/gzpzHuxj1nckFCn3YmcBsZFAD/MvutBbg84/2JlJ+DYJmpH
         w+I4mDjB4FYiRnVgUzqk7JG41LPsGHdX7iNZy/UNFJd4ki1KLtY6DHfAmGywNblldZ8M
         Kh2StBAg7rb7fZzIXweTq7JSK7XVNh3aWC1D64izgvFBSJeHCviHaPST6V8xCQf+5p0y
         fFbc2dqxWbRFxgNuiqapu3eW+Yq4iIdRHq27olDr+kTND/y8GIfS7UKL6VSXERqs5MHC
         W6CxG3vsg+VwcVCwjEnY3+S0GSr6llj6n0ZFxdx7kyPxTSijer29N25c5JmvKt1vp8n4
         ilRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533k6kOXmqbPvc4p4I5uSxL6lyj+jCVogM0Gap7whnNjdspRktlU
	QTNiSIkZUx+dixGb/L2eNgM=
X-Google-Smtp-Source: ABdhPJyL3C+W0iml4nSoa1dl929Df3ImA1/rWFEWfWPY9Mo6WNhpUdaBnHV7LsPdnoA/CYCyqkSx6w==
X-Received: by 2002:adf:ed12:: with SMTP id a18mr40751142wro.178.1600445881175;
        Fri, 18 Sep 2020 09:18:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1b86:: with SMTP id b128ls3210003wmb.3.canary-gmail;
 Fri, 18 Sep 2020 09:18:00 -0700 (PDT)
X-Received: by 2002:a05:600c:410e:: with SMTP id j14mr17240460wmi.13.1600445880369;
        Fri, 18 Sep 2020 09:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600445880; cv=none;
        d=google.com; s=arc-20160816;
        b=a1XdPXD0Ur6uLPa/WDQRviX2oJ7hsUIwZPAvL7E5HGINUvu5LblBAJO0U7u9dmw5gH
         FJT1VZP4FIUX50CLJn1qptHFoskJomb/8mwaOhe5HrUkGhoBz3ZUEOHbZSdfQKfM0qlk
         Q52D6DwNzr74MZvkiPGQ2bykd0zqWgT4BCz/waNlO1rRyOJU6ZiLOkBrpiSEpBqmqf10
         9I2I0oSMAF53m8KrpmSH8DGs9eBlGjbCbMSCEw/e5CX7wpkFOSSyiciy7lN/8TBxXzW/
         8k2PupjsQtV37k3XMXtWBv96V9WE50mOzlJam1wVw2lBmDQWcBfEqfydhCws1XsPb5WD
         vfFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pMf3yFiIumdNcekeEz4Oor/d6RhvmD0GihZ6qnHJHTY=;
        b=X1x9NhOaRfGaRvd+t2f+2TFT3jgMVMj1n7IC70MY3wvXRVIao1nCjpEhGE6OOmcDoS
         IAOJxvQ9quAQ9V/EDsLTCu0oCkDoOQMZiR+x6QjjSvAyAaS98dcyTYglGJnGtNH/+vvd
         0Dk39OkN7a88a67bkVJ3QP0M8VvCFQ+W3gz0bfcruIYPLLd2//6IW45TvqU4twAt2xli
         OTkFHDKMSnbRg0/vupAuLvbIyFehCiAljVF1YGdgDZQQiTCzKvbEZpb63yeOcqV06/4k
         0iCAIIKVi7NBEWGZg7MFkSEAVheojS8QwDU4qEjV7do2PFIAS2PQeIt54cBy4uGUVBOx
         WRzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X4vERyHq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b1si97437wmj.1.2020.09.18.09.18.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 09:18:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJJ5D-0005VP-4v; Fri, 18 Sep 2020 16:17:59 +0000
Subject: Re: [PATCH v5 12/17] PCI: endpoint: Add EP function driver to provide
 NTB functionality
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann
 <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
References: <20200918064227.1463-1-kishon@ti.com>
 <20200918064227.1463-13-kishon@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <31985ad8-2e9b-99d8-55ef-4ae90103e499@infradead.org>
Date: Fri, 18 Sep 2020 09:17:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200918064227.1463-13-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=X4vERyHq;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/17/20 11:42 PM, Kishon Vijay Abraham I wrote:
> diff --git a/drivers/pci/endpoint/functions/Kconfig b/drivers/pci/endpoint/functions/Kconfig
> index 8820d0f7ec77..55ac7bb2d469 100644
> --- a/drivers/pci/endpoint/functions/Kconfig
> +++ b/drivers/pci/endpoint/functions/Kconfig
> @@ -12,3 +12,15 @@ config PCI_EPF_TEST
>  	   for PCI Endpoint.
>  
>  	   If in doubt, say "N" to disable Endpoint test driver.
> +
> +config PCI_EPF_NTB
> +	tristate "PCI Endpoint NTB driver"
> +	depends on PCI_ENDPOINT
> +	help
> +	   Select this configuration option to enable the NTB driver
> +	   for PCI Endpoint. NTB driver implements NTB controller
> +	   functionality using multiple PCIe endpoint instances. It
> +	   can support NTB endpoint function devices created using
> +	   device tree.

Indent help text with one tab + 2 spaces...
according to coding-style.rst.


> +
> +	   If in doubt, say "N" to disable Endpoint NTB driver.


thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/31985ad8-2e9b-99d8-55ef-4ae90103e499%40infradead.org.
