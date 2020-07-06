Return-Path: <linux-ntb+bncBCROLYV75ECRBXUPRX4AKGQE5HEBNOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CC4215B20
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Jul 2020 17:48:48 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 75sf26486383pga.20
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Jul 2020 08:48:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594050526; cv=pass;
        d=google.com; s=arc-20160816;
        b=KzQiEYIKmhWyrDq84Dh/VaUoyuj4wgiAC5dF6eDTkAmnH8sQTzYEFwMAYa3y/4YpYw
         QCkXrpjuEN0xdpsPp+IbsyZaFQVlGFBuubaqb0SA2IsA5X5NXWatoWmJG83IgRBw2k8V
         9NpkpfLS9+RF0o0780/ggBW84REwLysq5wz2LOhRBa30B72TamKuhghBy7/+bDzDtdE6
         QYDMaiMXeVeWPjTwCpD1XjNkaBWNhoDLeHTNhs3zCqIhPg/PHOWkR8iMsINojX6cbI/x
         HHBTemtfX06Dghn1xUgnQuvD7xL9KcvYt8ctLazXCkz4VFRozqr07/HTW6tTZ2m600IL
         Z4ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=oJNg3y81VN7bk3HQUtULVasEVTZEaUJBCk6ugpZe5ww=;
        b=A5puOLRWkNwV9LVMq99akFvi4ARQ8sA2/zHdeIQ+zX+1aciWBKhIsASC23sHABjUVE
         VopqD0OpzFXNbH4sttOY1W7rtPBKaX1vuiKRYT9eQPt+3av2bDG85tbkdRl0hsyYxYK3
         yiVSi+te5Bn06fMMpniz8t52aHYl6TvYh08G12QhDHBLQsYW+Q/XhLzamuFMe5x1NcI4
         tEydRGa5m2Q18wdEE9Me/a3k/TdMzTKoPVT144lglk6IeKKf2wOnA0lSdYbBeBEEDEPp
         iXaxtFdmfwD6nNRNk0d9y6t8z5HjuQ9ybx7gl+w7ENzfIx1CKge8UH3fCFE/5rLEI5yn
         YhOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=ira.weiny@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJNg3y81VN7bk3HQUtULVasEVTZEaUJBCk6ugpZe5ww=;
        b=NJznlvEo2AHPOi7PaFyFUUIer/6mcOHLmImjPyq3qOzhp0CY4T9awCZBlcHO0la5GY
         L8G/wR6SfAGdszPj34EKIHGoAYHCMOaO/HVenkM9/kcdEwFkWfFaOhnNQHnVbuyNQqjw
         yKBE5cgs78l4rRX6YqzalO/JDeCGT9SLvr7obMylk4bJhrBfQiA4uy124ukFOLpGHH//
         3sDAdFBXHXrGiHfHwHW4cBhpecB9cQ9Svv1McLfvYCNEghUEc7S190jZGtOkTglo8Bh9
         4vi2duyM3WrNMQ5CnRpOMJNbVGgKaDXpzCil37tsm8IK7y7H9gMuMQss/oa1QbOSs6S0
         LxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJNg3y81VN7bk3HQUtULVasEVTZEaUJBCk6ugpZe5ww=;
        b=gTdA/M26W0b/3QajQBAY3yfQ4ns6nXka8P76R7HW/3zqInjKSu40HuprsPhigoh65M
         iu+DqHRkkArMPk5iEXpjAJFMolJLfeLfqBBsNDgvNOiU0bcaN6ruHf/5ijBJ3W2SpfsP
         GTurm7daKrDMdCYAUJTab7R21cy1snHKroPe/DjDv4hp7z2KbMZG0Oa95LPVNHkFtiuD
         xr9WIQIGu96iYiM8QeJb5fJQuLl42NGoGjyAq97hQYoXteK2BSSmuLX52XVC6DClNqzL
         pnJZXJD55XLKUNE+qAn8wYDPd3HpyB6bT9t+zG1znEHp0zTLRUCi/4b3FVJ2x0BR8ZrE
         QDzA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533elCmjd2E3NAOwThejI35Q7+w7AdX3c2kBMx8dxOkNH/jpjxBv
	sxAd+m001spSABtnbuZnVMU=
X-Google-Smtp-Source: ABdhPJzY7gBMWI0VV0UydVoXz9rlpnJKWhZpdmaeHg4SUuHvkYF9ysy7E4uOi/eb67IgLZ3cG/VrKQ==
X-Received: by 2002:a17:90a:d912:: with SMTP id c18mr13363303pjv.184.1594050526494;
        Mon, 06 Jul 2020 08:48:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:8a16:: with SMTP id w22ls8303pjn.1.canary-gmail;
 Mon, 06 Jul 2020 08:48:46 -0700 (PDT)
X-Received: by 2002:a17:90a:c715:: with SMTP id o21mr52900275pjt.35.1594050526086;
        Mon, 06 Jul 2020 08:48:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594050526; cv=none;
        d=google.com; s=arc-20160816;
        b=Dg/Hj5ySMai0D8Yh1VgWPPk8kefTjaM6Sqao9bPpiEA9jQ6uvC/dc4JnS+Zz4VcDv5
         NjQ2wzp2ugQG341LjXdnPQY25kEAUkvzbCxiroLJpzgQ0ZF2ubPZHpRwFtLnqwUa3WNM
         IF00K2mb3yAJYTFD74jOPucuGUOLcuJV5zq9I6uUofhbOsKyrJjJJ4tm7QiQa2CTzcRu
         fAIx3/oLyrLZPUqg75ecrJu7LnDBbUnLbOcaNjWPQLma2uDaOGNmZpvDEXn9RtB6LvBl
         Zn3gjJUQwH49E+3BaNbgug78wAOayuvd3R+2laz3qTUVYOkBFXTaTNNr1eOKb1MHU60N
         jCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=x/lXsavxxgwFdiVz9pL0ijICcjXfeC0C4t4+mAS7ivE=;
        b=R3k0xThoeUNS3udWglBNDpqB3sW1JMFIj4doJQ09hBH8hSZvT+4+4h8ok1jWmb304T
         YDB5c5WdfHt54Ii9mb+kWwvowd6nuvCZvM6Jxph4SCTLmEw1XVi6VwtPuSyg6wlu1HHu
         bRi3m0tkaOaLKN3No4uuWB1GqGw9yqq/DUnN4hTPoBwlWiHku+tfNIG/tFKPuqAZ1eau
         CBZnI3rsXw9pMAYmiDMXZ6w0Bu0PicVJy08nxb5/j/ThURza5fmQLTloRepQY7v6vuU1
         J50kxxiwV0JzIGPk3qAO0s2wGJAtXxrW5R60btgVQF2QaFO2XxUN904m2mkc7wHTHFhF
         MLrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=ira.weiny@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id s21si1336128pfh.2.2020.07.06.08.48.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 08:48:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ira.weiny@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: JoB+mw8pA1j1iQux+lbQvuRx2vUt2G+6Bw2YmTG7MTzpjIaN5kmD3pJWSc39AcZHNJeTExh+oU
 1K6wABVb3TpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="148932905"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; 
   d="scan'208";a="148932905"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2020 08:48:43 -0700
IronPort-SDR: mWtp9jT1oxvVNrM8s4daFQ6nnPj+gYN2ssBS7Syix2KbmUM20xaxbsrT/kOeHfi4jicS3LFxaE
 clCawcSTm4Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; 
   d="scan'208";a="323244256"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
  by orsmga007.jf.intel.com with ESMTP; 06 Jul 2020 08:48:42 -0700
Date: Mon, 6 Jul 2020 08:48:42 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>, linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org, Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 13/17] Documentation/driver-api: nvdimm: drop doubled word
Message-ID: <20200706154842.GC1123188@iweiny-DESK2.sc.intel.com>
References: <20200704034502.17199-1-rdunlap@infradead.org>
 <20200704034502.17199-14-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200704034502.17199-14-rdunlap@infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-Original-Sender: ira.weiny@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ira.weiny@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=ira.weiny@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Fri, Jul 03, 2020 at 08:44:58PM -0700, Randy Dunlap wrote:
> Drop the doubled word "to".
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Vishal Verma <vishal.l.verma@intel.com>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Ira Weiny <ira.weiny@intel.com>

Acked-by: Ira Weiny <ira.weiny@intel.com>

> Cc: linux-nvdimm@lists.01.org
> ---
>  Documentation/driver-api/nvdimm/nvdimm.rst |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20200701.orig/Documentation/driver-api/nvdimm/nvdimm.rst
> +++ linux-next-20200701/Documentation/driver-api/nvdimm/nvdimm.rst
> @@ -73,7 +73,7 @@ DAX:
>    process address space.
>  
>  DSM:
> -  Device Specific Method: ACPI method to to control specific
> +  Device Specific Method: ACPI method to control specific
>    device - in this case the firmware.
>  
>  DCR:

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200706154842.GC1123188%40iweiny-DESK2.sc.intel.com.
