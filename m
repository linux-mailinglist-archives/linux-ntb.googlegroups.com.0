Return-Path: <linux-ntb+bncBDXYVT6AR4MRBRVBR75AKGQET7LH6KY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD024FFEF
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 16:37:59 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id ba3sf5503678plb.7
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 07:37:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598279878; cv=pass;
        d=google.com; s=arc-20160816;
        b=D9G5N3ERnA8o9/BjvPQYs8eD8KS9l0XffmE/VLm3TYAz7GRv1RVt1zv1V5/Ho44hHw
         qGev1BSzUKryeRVzT7xNXRZHwQBPFpBA88HUkzA2njZ/E92nVX9wJo2LkO454UgpqJmb
         QEtjx7pcZ8gnyg3F0hcdga5DvSuUp+iY0CUAgVIwTZszZ0z7mVBQDGpRVczrUBkyVfBl
         OmasN8TEDitwSZq0kOCvFrm+JqNKne4ovQrWm8dDvdQp4I0ZfRvY4qjkRfFOXBl/h/Kn
         V6XC4N882aBZ26EQqxwH/8oO6QB43V3Mcul5mayD4AuL1RRPZe/ZRDYklika26xO5Z8w
         8Zcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Eb78npsCQSE+Vw064WHXx8PZFxfwZZcOXRugZqOwZ1c=;
        b=d7pGRuSMqFszkQaC3L3MjbNKY/0LQvEDiTR8vsWVDwd8uQKsfD5rNg7U3FIX8zSOu3
         b0VtVwwztAKi8pjO6D+JS0EnkWZ+cH2uP5PLRLXAIkhQJ/n5To0ht3joj1F1Adqm2n9J
         m4FCqG6HpFNqKPpafRcbysQTY7lkzDkILnoQ2WVGsSraORb4LUYToDoGY3u5YIQc9LGI
         le5WgiTwvQrdj/HR5oJnYF1Y4JOm+bDaiBpQXiJa9kKn5O4anyrnmGG+1cOH+7Sz3ce9
         I2KOFB7oougLg4duM53dNOzNRhcPHPL3BlfQ5UEtGqNDkQP+uWAzZPCxBBsaRhoHZnWb
         x7yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Eb78npsCQSE+Vw064WHXx8PZFxfwZZcOXRugZqOwZ1c=;
        b=GODVz/qSqxfCS1nlXte2HqkxSXd6eyy0YqdcmXM64BsCumggQn0+GWQ7GAh7i+/nwG
         Zfp5SLtRAUtFDUFzvrw1gN1jQVSzUH5+ZJG1PUIj7oA7Mq7jPvSOxEgzgS6QKtTjxNat
         V05opdlveeVVlFdQ+i1Cs9tJmdpP2/JuifjTQWJ0F4M28/6jZaa5FZvVY1HAlNV//078
         +0rrDjCSWKk66FAfoexifMjFc/CN1Hpq/766OQ0VNBqcpkVyfjwfjuyzH3bAxgURWwmd
         TE6bDP3MBrkogFtDeUQc9ysldtqNZoDaBJVmURK+JG1Dw2Q9Shrx7mL87WVPtEDmRn36
         XSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eb78npsCQSE+Vw064WHXx8PZFxfwZZcOXRugZqOwZ1c=;
        b=Di3kimr4p1N80RzTIj+1Ndw0QByN7u4R7Nbv6TmvXa0lrsZK0bjYv7acVUNEzum3qH
         3DzTkzlv1dNkuf1sDv9aFV/lDxqX33brJ+GxYqwMbghOLBQwwlZUBN7YgfJri4td+QYB
         pLea1QGvXqaDLcwroeN2KCU4ic81GWLJIIRJVbKqFiMx0Y2JB7Wi7i0AnHpHuX1T7lVT
         KlUO7Ww4xkNn+S7pzofbL3PcVQNCmAj6xp8L3y/IOWVX7AeEiJAAHJCEBKDa3HymZxhy
         GawXAb3FvZGU7+Srvqkood/BJ6mLsT7L+dtaOdUpuflZm0JtHM8PISEtDohNjl3XNZbM
         0quQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533PuXLJ/P5JMMDywPfl7evDlcGU37nxocLBSznEtsKlLLHT5uzb
	bNDYD4IXjnY4Qby9H0iFVPs=
X-Google-Smtp-Source: ABdhPJxpMAFZFeNs710km42VuZMY6Wbl5lH5TiQ5uUAEbjDO/OSGQBYE63NFpP/BrhIOqh52+g5mNQ==
X-Received: by 2002:a17:902:7293:: with SMTP id d19mr4119309pll.303.1598279878365;
        Mon, 24 Aug 2020 07:37:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b781:: with SMTP id e1ls4668251pls.1.gmail; Mon, 24
 Aug 2020 07:37:57 -0700 (PDT)
X-Received: by 2002:a17:90a:b787:: with SMTP id m7mr4851521pjr.169.1598279877907;
        Mon, 24 Aug 2020 07:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598279877; cv=none;
        d=google.com; s=arc-20160816;
        b=b1QdtHW85SBAhiQCmuA7kNmgvzrCPy9tnR7HZjKBRwoYZ57wv+qw9mrxEr+5HgQnbU
         ZYNz60XISj/BHO6p/sLyhkCe/PWw+MkC86snYs5AfRxlVdfRIlKOeCj7rpJAw1GqdYhJ
         RxWEcQOhDhQV1tLRWthIhk1B7C0iMejDKWbYqDhHxRYGuB810Hg16DGa32OlGllDpnwv
         oaf/3rrfSrfhnui7qycsYNYITknsyCel4E1G7wL6T8gSA/fsKAcUzSovbZTlIB+pBpJa
         ZdkeTSk3LQHDpEr2Ybefk7l6q14q36PKg8hkXycywoiGTPdWIe4HJj3lBBTs6E29x5++
         hyrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=ZjmgXiS+ugjUfeSrcLLTu/gj7oAqwbWO8WSBtN0KgQc=;
        b=hkxJ3nZf07kmYB6/xdYUQ6jMso6koQueiEdNrvwrCXi1R++xZWgB+BNiY7pHYVGtk+
         7gVt1n34zV2VaVUX2ehrXdbjy0PQnm10by3D8wGgZ9I3zgggr3u90F/8ckCXhjrSyTWy
         Rx9JWjf5tYlojMPyO5nE6KoXyHGwUvHE5ajT3HPfQtIEb+sH94WKdkXS7q22yLFpxwuX
         /OerXQAp/a9yVgt6aK1KAoi4zLSVBuBGb8PXrumUOkJJ6Pn3WqJ257Q4+xJV0SPevjez
         YT6K1EwUaTkAwBPfuKThGy8trG/4DK2jfpy/w6VZ7pfFwJdIF5cuzp9o6YA/qRvf32dA
         XiBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l26si682727pfe.2.2020.08.24.07.37.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 07:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: a6WwAWdeHHtvvsduP8M+4DJeOISTCpAAzaqA7ZHpe+2f2as9BsVGv5gGT7DMCUX/2VYnIIbcnk
 hNlT1pk5xvpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="143557871"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="scan'208";a="143557871"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2020 07:37:57 -0700
IronPort-SDR: k8+kAdr7UoNl4ARrNTt0NMlv377YXwBUPHzRtrOMM6vfQe+5yjaIO0cj7ntFTM6PrwbjZc+Odt
 kT3IJqpHW7Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="scan'208";a="298733963"
Received: from shizhong-mobl1.ccr.corp.intel.com (HELO [10.212.53.175]) ([10.212.53.175])
  by orsmga006.jf.intel.com with ESMTP; 24 Aug 2020 07:37:57 -0700
Subject: Re: [PATCH] ntb: intel: Fix memleak in intel_ntb_pci_probe
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
Cc: Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <20200823065512.11626-1-dinghao.liu@zju.edu.cn>
From: Dave Jiang <dave.jiang@intel.com>
Message-ID: <396e55a5-7ebe-1e81-b1b6-9a53cd885a8a@intel.com>
Date: Mon, 24 Aug 2020 07:37:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200823065512.11626-1-dinghao.liu@zju.edu.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as
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



On 8/22/2020 11:55 PM, Dinghao Liu wrote:
> The default error branch of a series of pdev_is_gen calls
> should free ndev just like what we've done in these calls.
> 
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>

Thanks Dinghao
Acked-by: Dave Jiang <dave.jiang@intel.com>

> ---
>   drivers/ntb/hw/intel/ntb_hw_gen1.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> index 3185efeab487..093dd20057b9 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> @@ -1893,7 +1893,7 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
>   			goto err_init_dev;
>   	} else {
>   		rc = -EINVAL;
> -		goto err_ndev;
> +		goto err_init_pci;
>   	}
>   
>   	ndev_reset_unsafe_flags(ndev);
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/396e55a5-7ebe-1e81-b1b6-9a53cd885a8a%40intel.com.
