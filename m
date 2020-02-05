Return-Path: <linux-ntb+bncBD3NBC7Z7QMBB7UZ5TYQKGQEB4DIJEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C5115386A
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 19:44:15 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id r74sf2135320iod.13
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 10:44:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580928254; cv=pass;
        d=google.com; s=arc-20160816;
        b=IgBVrw21sDQxIvDYSJuQAmSATNBCSiEwAHzm9bERWVAfp2RpGDrLEsH05ClNlqRuQg
         MPWJdYzGcT2TrXHLeVp+rJ/bh8D5pwQTr1OhHQcfeaTLXWr3H3vqbyOGCQmD/rzk+2H7
         aU6Gsbu8gDZmYh7UfiRfwbCPEwZj/sEUlLXyz4xuY9Xx5g86m7vGVa/8GmncE188KErG
         q5syZEugM1/odMAgC4AtSbh/+cfbSxQiiZGTU/HhuGc9jGfOeDyuyv73NtlmQbxmRHQa
         7gRBeN4Y6nFYmnSXhsw754WmyzBU5hKdY18TSHNYPlEUGYixayNTKbjEKrn8XoIkJC64
         oiTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=X81UfTL0/f6bsfuVECAJRa0J4ikHO2HjYVee6b0AiEs=;
        b=pngbuZEjdUh8fVDg0psFDyAW9Ml3bTFxb2Px6cgubwQCq7ZHCK2/rQaxIGYgMhe2t6
         /+bJldnHLJegxxxazlCnzyrh4YAyyAamOdu9tlGvolyP82bmaCiZQ/qAp2xlF161B41v
         QYlLmsAP4aB0PIwRhC+naapPYtUjSE63mvq+3UVdsWDGXtIGKSz4FipG+EOnh+uFXwjF
         DOcqrE6JaTUcT0eGePmTe1//AAncBXW2ZWrGtSHL5iVZb+K5g+VVh09hIeXFdWvFAbyP
         LMLhFtvrlCOVSD3zax6y60Ed8lvv7ZELmul8c11c20BRMOHTopRNuMUXmJZLQcEs/Iw0
         VE7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X81UfTL0/f6bsfuVECAJRa0J4ikHO2HjYVee6b0AiEs=;
        b=i/VgxUa7mHpLPK36IwphR31hUhbAxYWcI6KqvvzI2Qlbk6tMyi3ZN7t1cXIR6QoScN
         jZ9ZTY01GW+IsjEotD+QrXxXJQ6Jd7oM00MyNxIGJfcEqriKTNo7PQpk2jwtrqb0dKAb
         k6rOjAYnwDXmx5+brgu+LVzkYxe2Iszj/Oc2FL+TRoPP4zbxnDh9gB2sWGNgoRgiNJUN
         c/7ZEp7O5zXA6s1bRo8gtCdy3dfqJUa2I6vHPhR15vHhTASX380sdPGrGPQ6sVP/o/xe
         QQCyx1DUtAKk4jGoIY3SgIyQtrKuk+fw+jwdPY+xYFkEcfY9FujIfy7dt0kdXc631q3p
         fmng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X81UfTL0/f6bsfuVECAJRa0J4ikHO2HjYVee6b0AiEs=;
        b=aZBTz14HEORh6LAiUrXaVNkn2/03oz7tvDiBRWmgY9mcUNoTkeJLKvLjvpJsERODt1
         xCKoxKBQez96F408mEzqRfuKQ9CiBPi5+HNtBOQl+4sHHgTFTvC7c/eRTerCdB5ijl4H
         A+7wB6GoCI+Nu31CFsCatvMI29YBrFYvJPlO5uzFUtswi1gX647RwDd0k51Z6JynFdfQ
         tDjg3rA9JT2e3gi4g9Rqe2kcBDedmWGYuu5svgryOuH64Rm0FEdH+kcFsWjgC/7UuTEU
         gVb0TXKQ+k/OEHsaHdbRx6aasM4S3taM2ZVbJan0l34DO4jri8YKHkdseFwHgeA0Ts/7
         QlFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVm7+4dNupd/OnmufVZHJJcdbFlMr7Q9kwjNSYDA8vMjvYHp/Lk
	LZm6gXH/tSiCtX7isL/L0nM=
X-Google-Smtp-Source: APXvYqw/pc6mFgbnEG8aENtDl3/PwsLu1xKRXi+zfktcYyET+I31IE91VoZ+/FnOKqu/MZYr2jvEEg==
X-Received: by 2002:a02:6055:: with SMTP id d21mr31394104jaf.21.1580928254224;
        Wed, 05 Feb 2020 10:44:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:aad5:: with SMTP id p82ls802415ill.9.gmail; Wed, 05 Feb
 2020 10:44:13 -0800 (PST)
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr28847075ilo.227.1580928253731;
        Wed, 05 Feb 2020 10:44:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580928253; cv=none;
        d=google.com; s=arc-20160816;
        b=tdqkt0BjJhQoYb+jrWyMY7OmIJuA8e4S4odknGmcewmMOVTwEpxymZB3E80v/HmTng
         AcLNOHM5IzeOwcj3QZxk9v3wo5imYYaxeC4NTlA52eJcY7cXCZILOvSQ2OzZmsJJLxn6
         0OV3gCk+OVadJh2nkLlA6H6SAFEdTjtWM6PrfV5EUm2VmeuiD5gXIEUERdshRlLEnvM5
         CFwy/UXloOmqlqoCQNtFsClsbAY3WY0Ke1/uaBLfXnfjz8Zz+rRw3uT8Kzhec1tUUL2O
         YNGABXceHqNm5PSGTxruH3W16mrI/kHo/KGCf06I1rma6/oBqUO+3Gxn4sfWHlJDLL+D
         TO+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=ZUCD5tdE1PbDWeBAp0hPO4Sa8gywjaH99I9g45cHbLE=;
        b=mrKU1LweTw2L8kvFxxOabpT7yrZcTXUJyhDaM9UgXeIRQG+eS476oAlV+dh9Qlcjvb
         Wqr4MABlXtiKflrcafkkjbNWUMEEG3dFEsAApqJQRDTvyvk1kXBWrkAT13Dyn8CBO0UA
         zuDLr/fZjrtbYLHxQZwS05yy3YdV/JjgIkmogSOly9lNK6gisFnRk10X8bZbHO59/rgC
         jck4P7G8DzMBoX3FeXkdMhwN3ilAW8j5QoqgTVsJCPNO/i5g4YN9oZDuG98mIJdis9IN
         5eJ9CFtIxU5Y3Ht/+bJq45ekfY5U3yCvHU5lJ34w/q56Lo6H9p2Pgkz6i8PpagHgCjxH
         DOXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id h4si49601ilf.3.2020.02.05.10.44.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 10:44:13 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230] helo=[192.168.11.155])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1izPej-0005YR-F5; Wed, 05 Feb 2020 11:44:10 -0700
To: Arindam Nath <arindam.nath@amd.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <cover.1580921119.git.arindam.nath@amd.com>
 <aa4e69feffab2fd3cd846569e0546c5cf8f8f6b4.1580921119.git.arindam.nath@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <761e76e0-2e5e-6c71-3384-1ec10dcf8e88@deltatee.com>
Date: Wed, 5 Feb 2020 11:44:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <aa4e69feffab2fd3cd846569e0546c5cf8f8f6b4.1580921119.git.arindam.nath@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, sanju.mehta@amd.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, arindam.nath@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MYRULES_FREE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] ntb_perf: pass correct struct device to
 dma_alloc_coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of logang@deltatee.com designates 207.54.116.67 as
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



On 2020-02-05 10:16 a.m., Arindam Nath wrote:
> From: Sanjay R Mehta <sanju.mehta@amd.com>
> 
> Currently, ntb->dev is passed to dma_alloc_coherent
> and dma_free_coherent calls. The returned dma_addr_t
> is the CPU physical address. This works fine as long
> as IOMMU is disabled. But when IOMMU is enabled, we
> need to make sure that IOVA is returned for dma_addr_t.
> So the correct way to achieve this is by changing the
> first parameter of dma_alloc_coherent() as ntb->pdev->dev
> instead.
> 
> Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> Signed-off-by: Arindam Nath <arindam.nath@amd.com>

Ugh, this has been fixed repeatedly and independently by a number of
people. I sent a fix[1] in more than a year ago and Sanjay repeated the
effort a couple months ago[2].

I have the same feed back for you that I had for him: once we fix the
bug we should also go in and remove the now unnecessary
dma_coerce_mask_and_coherent() calls in the drivers at the same time
seeing it no longer makes any sense. My patch did this already.

Thanks,

Logan

[1] https://lore.kernel.org/lkml/20190109192233.5752-3-logang@deltatee.com/
[2]
https://lore.kernel.org/lkml/1575983255-70377-1-git-send-email-Sanju.Mehta@amd.com/

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/761e76e0-2e5e-6c71-3384-1ec10dcf8e88%40deltatee.com.
