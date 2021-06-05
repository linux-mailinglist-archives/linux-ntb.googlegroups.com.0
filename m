Return-Path: <linux-ntb+bncBCHOL743RIIRBBX252CQMGQEU3UCVYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A65139CA66
	for <lists+linux-ntb@lfdr.de>; Sat,  5 Jun 2021 20:05:59 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id l23-20020a2e70170000b0290137e94afe62sf4061234ljc.20
        for <lists+linux-ntb@lfdr.de>; Sat, 05 Jun 2021 11:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622916358; cv=pass;
        d=google.com; s=arc-20160816;
        b=skCraOModUYPW/vDh6qc8wRXozL0FPQ63C7ygPcwhqEdd9KCN629P+AVxBKoX6DCjh
         EM/3oSbSxNr1tAR/b97dwyhYiX1xm1hXcFwYRx8JbYiRK72pdhNxeslB5QgndvfCcqyu
         PtwYQwMHMEqCE6UPMDvloCcOkjLmgpclO2301WWyWqMB0LEBTBjk9UXAEjsIYVETpAu/
         1iGfi7X0mF45g7HvIQ2uuRd279PxyUDu1OUca6hpie4XY9xtldX8kz44iXTFrVr/ZloP
         Xbntc0QmClCmjWKnNu+JW9L0y8nEIjtrNSyDhhVqllUBHqj1Kz3VlQN1Gwc8Ud5UxY0h
         wDXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=3+J7zw4zm3fcoOMfJZiPOUokS652vfmYxHqVVdGnb60=;
        b=CpIdTfibVMB6hScFr+OD7cjdyZRNAx5X/TZDe9KJSmAkO3OIsB9lTHIyByVNxJIbAf
         W+bYcwRTLmoHX5ginbsogefuUY1nrHkVzf583BhT9fX6agXl4COd6YNpTLP2aKekR+08
         vbxz7ekVWObqy6AQrFqOd+W2c8Hf/0NvBbASpEl045U06o1VhMMd/+eSqFDn8FsYFT99
         QvWbfDnVKK+ZfL725ODb0g9a4tgPv/GWESVN7zwOMX0XKYjBWZy+EPSFJ37718vfZMXO
         ar2qVi3t4Pybyo5VtmjluP477wKz1uTndsZy9XvawnqfIEPMSpKiIE5T4lqh4URg/sl/
         6bzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fX38TsT3;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+J7zw4zm3fcoOMfJZiPOUokS652vfmYxHqVVdGnb60=;
        b=EgLMET7kGyLS4Prp1HvSJyoS6a2cFL2ckuKSfOh3Y0DQ4h5AkgJDTT+ArI7wkvUa7Y
         UnMBvH2YfIX/VGhY7bn9USZ/S/u302xd7EJS4SgiuBh4r8EYxR9bznv30FPNpMCqVPxE
         ao2yHhCMCfpLXl9gcsPeab+ApckN0WQEItz15+MtBCUk3x3z3OBIKnRtJ+viIQmhHFFu
         26ZFS/koTxh/d79MM8NWl0FELjDlJbWXPU2XT0Ryd5T4yk497pdkI7gazf2btnRn4OvE
         8D0kKrnJWiU0denqATpp9/4PlzhfACm/KDvzm8xCKKWVycQZn0IP6okxdPJ/x7rjVIee
         ADUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+J7zw4zm3fcoOMfJZiPOUokS652vfmYxHqVVdGnb60=;
        b=qLt3cdtSNkd1jOS0eWXoSl1QKGmuPVzqXcIXL7pCMkOQ4B8EzWrgjQHp4xO9gTFNEw
         chBh5/aSdJQhGz3g1sXpT3arAcTuwGaivuCTZIM0cC+lVDJS5DA2UT+fEq2oD39aROKy
         JnJOeQywGZEFSZ+HD7udgWUts/xOOsWf8YgZjgKzCjeVHw1FgsyP37tnSUcKfCyyAswn
         0b56P/Okxi825DB2byHCyaurcmGinec/MF//DrBZA213M0Xzex+UjzNQCwdHCBg6GcNY
         ZuycKTyJePZ572X1HHdAvVhydtp1z3sBCLW7mZrTD+ri6GSJ1txO8h0E6xlANs0Ehand
         5amw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3+J7zw4zm3fcoOMfJZiPOUokS652vfmYxHqVVdGnb60=;
        b=Au6EvadmRrW4cy0yNGGFH6TUurAdERx6cFIA5tK5euPNiTv6OfqpfqlxzhmbBHBsXq
         6rt5AXMvT06xnsyhn9iRXYkSKtNpwnBsBvOj0/kb+UYoFzTVzOjlmq1KaV922NeYXpnN
         CmLyDW+YCjvJi200rZe5c4ZnNNgfMkAzwgq5Gz0P2OTEIffTVUzWfqTNDlQDDN/UnIu7
         87MBpoOWJVyaTbKfPhW0BsN2bANTK6/nqstMn8/7UWsq1tzDx5JkeJbH8ylGmMC2w6fS
         8bOg/gFMmQ4PKM/e8+8y2jLvJ/JfPO9Li4AvCtwVzBFYGhsBd2HiWpy+SIn2pJ/rR58c
         rfKA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531z9GeJdoxGlHh5uR4nufDR6tjrbCUtKPqBns9ua7KXLq3CIF3Z
	9Cqj6rPGUhZtzinscDV7tu4=
X-Google-Smtp-Source: ABdhPJz0qQPfUUVdDX4MAiMZcQ7OJZdqeUgy8O7cDn9s2P0+Y2/7cvfdmOSn3ZL46p9/2rmoKn4bFA==
X-Received: by 2002:a05:6512:21ae:: with SMTP id c14mr6394950lft.483.1622916358746;
        Sat, 05 Jun 2021 11:05:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:32f:: with SMTP id b15ls1330977ljp.10.gmail; Sat,
 05 Jun 2021 11:05:57 -0700 (PDT)
X-Received: by 2002:a2e:b4a7:: with SMTP id q7mr339502ljm.259.1622916357472;
        Sat, 05 Jun 2021 11:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622916357; cv=none;
        d=google.com; s=arc-20160816;
        b=p4i3kFvhrBJmVPGZHfjIHpzqhqNM9TMnwYNQ7Vnr3YmHl+9qd/qNqv2qYkaaz/d8Sw
         lWUuG2VeXlVlYnSIacsJs0I7oNs2HQNdrs/v15M1mQb/q2UWwF1GbCuHg6fE8+I7+nVK
         mvap5Xe8F6PmETxEgzE1q4+mj+Wvj8DYFrQ9KzeCeujtFWO5JNm7bUiIFXPWZ9HAgzvD
         Wqfs8MMBsjnxH/ddkYoqkX0adDXiWDuji7tHDWiShx3+MjMgjQbMTDRHDOjx33gENPAS
         9QUKThrLbmtUfz20W+QSmrtLt3d4HHJel24KcbTMMzvZtkl+ruHoMKmsGykOH2o+Zkni
         dkYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HPNZUjts9UudLzP09/coPUV1Ff1X+d0BSq9trpWcovM=;
        b=FaAFpBT82yxVG6P2dZM91cJgZx52nOSvjdQcmDv/ZJ25/8t53c9mG1rZ0NEEspPKEY
         FfSGr7MHQNpJfKz7vXuxNRe139MCACFoj4Ri5IB1oSUrHARrjMJRQDVvIz7ve9inXTja
         ZkIZbHIcpkJcr5sz/5Qi37Ihddt+G30GfANg5OFrmUjEgYNgoJVSJFaJEcHUxGkUB6gT
         rtjgw2m2ch/kzZolFVafv3mLwsAVB5PJiEPABKaVRg1d6MxozmVytBVX1GvHD10nUpOv
         DPwDtsopWvZdxNcAOhEcfC228L2bU93N401SBORfpE3fB1oG53t/7IRb/lWjhWFQznT3
         rMAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fX38TsT3;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id p17si357114lfe.0.2021.06.05.11.05.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 11:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id z22so24800ljh.8
        for <linux-ntb@googlegroups.com>; Sat, 05 Jun 2021 11:05:57 -0700 (PDT)
X-Received: by 2002:a2e:b5b3:: with SMTP id f19mr8198850ljn.305.1622916357316;
        Sat, 05 Jun 2021 11:05:57 -0700 (PDT)
Received: from mobilestation ([95.79.127.110])
        by smtp.gmail.com with ESMTPSA id e29sm922432lfb.258.2021.06.05.11.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 11:05:56 -0700 (PDT)
Date: Sat, 5 Jun 2021 21:05:54 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: jdmason@kudzu.us, dave.jiang@intel.com, allenbh@gmail.com,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] NTB: perf: Fix an error code in perf_setup_inbuf()
Message-ID: <20210605180554.ql4rhpukj57ujkxw@mobilestation>
References: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: fancer.lancer@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fX38TsT3;       spf=pass
 (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::22a
 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hello Yang.

On Fri, Jun 04, 2021 at 06:20:50PM +0800, Yang Li wrote:
> When the function IS_ALIGNED() returns false, the value of ret is 0.
> So, we set ret to -ENOMEM to indicate this error.
> 
> Clean up smatch warning:
> drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
> code 'ret'.

Great catch! Thanks for posing the fix. Indeed ret would zero in case of
unaligned buffer allocation. Though such situation is very improbable.
A tiny nitpick below.

> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/ntb/test/ntb_perf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index 89df135..c20b375 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -598,6 +598,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
>  		return -ENOMEM;
>  	}
>  	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {

> +		ret = -ENOMEM;

I'd set -EINVAL here. In this case we do have enough memory, but the
base address is unaligned in a way the NTB hw requires. After fixing
that feel free to add:
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Sergey

>  		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
>  		goto err_free_inbuf;
>  	}
> -- 
> 1.8.3.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1622802051-43464-1-git-send-email-yang.lee%40linux.alibaba.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210605180554.ql4rhpukj57ujkxw%40mobilestation.
