Return-Path: <linux-ntb+bncBCHOL743RIIRBCF2VP6QKGQEO6TQCEY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 477002ADE68
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 19:33:45 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id n207sf2421706lfa.23
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 10:33:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605033224; cv=pass;
        d=google.com; s=arc-20160816;
        b=uyrDM2wYtidj6lwUdKzWE7zOvrFKijwspMPJLe6YAqX4ePUgrbWeyHhzZZe1EBd9Cf
         eMIC83owVPTqTKYWuxv2ZATZ1xgIt5ZoSm/D6uDLELC6kUOYNsQkjSVrcHR5jCh3vhcZ
         mBElMbHgML6GZyh4QJ3ISNsIjPxH1ZB52kNtrZzcFiZ71K1vj4FSn/lDNIxsmOVGgCZo
         UepDcWJ8nUID3byPO6plOWtXkdT+dA27vhcWBjAc1frJvph4O1zeYwxrKKws5k8WfKuy
         rNep7z94fu2IuHJvianXmgAcsrq5jlF3y8NmZKKX2JEKS5UHLnSVDcMyXS8HIsf6syNp
         OH7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=++xfq/jmtHuL8mUbnwhrz2C3XGHJH7yxsCYIhCH3Kc4=;
        b=fR8gG7TqspKN4ew/ptkLQJfh4rhlxTwL3ztl/0Kvew1bk6OvtBOQQ3tigtX9xbjL9F
         d0949fwPe6pDQJdpdHmTpcR+jjdgslQaeSXJDvhI3pYt6KUDdVm0InBzJBGeKNFSipjZ
         XCmyBxpkDjXL2LiH90nzaYiaZWu/cG4a7FOE6+O8lIx8BRICvs7F0oau6NUHXuucoPcI
         u1H/26kJQe+HucI59yY+ZE3SP0etALfViBNwZr45e6GuuhwFJNfguePwpvDDY1zsxkuH
         cMcJtyaACKxnEvhL5D/93yqTtNJEl8Kw31jn/557ibi8uDl7dqYcbUnbilBxhz5E2MQw
         oHUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOH5xt2M;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=++xfq/jmtHuL8mUbnwhrz2C3XGHJH7yxsCYIhCH3Kc4=;
        b=GnaN6mLxFAIffreqQ3oS8UfwHb4vt/KS9cbksjQghXSrF9CB6aPMd0EqHp/KFPsz5g
         /wX5044qJAZGGgfY+cutxSJ8CkudfCU7wav0t8YyhOFNnbipq/kYvtTyesAKP+k38jVt
         A3H3GjqLUnCH0NrWQDZcBtZGoPplmb3E3HkVTmH6DCzNcXtPmbltiX30t8DJFc+bQbkV
         Ef+GD1KaIdEHeO3F3e5xoGs1PAta/J6jTZII8+2dfmR+ZmDwyXwHMtVC8egBU130d5vO
         jEGOMyaiITIE2q+vCdrTyVL6Nhc3/sBtPLVzntYtpTVwEw/j+TjDrG1O3Bio/5KTaTJL
         vrTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=++xfq/jmtHuL8mUbnwhrz2C3XGHJH7yxsCYIhCH3Kc4=;
        b=Up6uK5c7Ip4EpZpbh766okeSZLPmeZ8+EkrwDn2MCEqHDFEybGUAkNsbbHtd1BAMW3
         PfhPqHOnvHpcy9cZipMIxyZaozkV5+mdDgZLQutYfF0g95GkLTJ+mMWUFiEwaZPfrJg6
         ZuAyP1wzDFl2XRRIVo2/7CILQOwdTOhTrsGa4gbMBTodmfRruannsMkRd89cFH++aNAz
         Fa4zw1u19BKS5NmIV4em+EBbTDH8kSmW9u1BwoWO5Gh3XjfvgyeNNs5aY+VZvuf6z0IC
         6MF3u9T7A/KyLtSnlhWfWWEuQdjhmgTYJZcZ7p0R/nd2qp7MVZesB0CkKZHxmNCcqLzv
         d9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=++xfq/jmtHuL8mUbnwhrz2C3XGHJH7yxsCYIhCH3Kc4=;
        b=mfJ5AxRBrOYD0jS8wz7S0ivRB2KH6b5/FtoOLE0VOkrafFRC8DqcppEMZzI3Oh2lDG
         VxbaydkZ2f/6QKWNlq2A18qrBHK8Da71VVNmCDH8k3UrIBbcogYrbF/Gg0VpGJxBcYDb
         7vXbCxZfkHu38Gl7oHc2IOSfQFzq+NeUKQVfCL47pUQvpjry9Xf/J+o3VSU+uPVyaehG
         TgfLlIK+A2VCMaRUxNzpQycFNzXvOzVAjniOiCCA2y4faNfJYQWByq0jd5+eRzoQWwZ3
         Wxr6GYbxhCmAesybv8LfR+JHFt4H4t9sdHrEHScRiKNN+6OdDQGpGm4WVJCbbiDQQwQE
         WnQA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vpWK1hKAw7Lkgfwwl3g4muocu5ez6mF640BvMwbFm15nH+qvP
	6DzIHaqVnYJLxf+ckdjXCPU=
X-Google-Smtp-Source: ABdhPJw5Z3nSamejzWsIfJK7Mj1rhE1AvF973GIyM7QOi17tL0nYeJ7IiStYRufrdOTz3CJO3C2sww==
X-Received: by 2002:ac2:57d3:: with SMTP id k19mr8962637lfo.386.1605033224797;
        Tue, 10 Nov 2020 10:33:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls929761lfg.3.gmail; Tue, 10 Nov
 2020 10:33:43 -0800 (PST)
X-Received: by 2002:ac2:5591:: with SMTP id v17mr3120794lfg.562.1605033223601;
        Tue, 10 Nov 2020 10:33:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605033223; cv=none;
        d=google.com; s=arc-20160816;
        b=LF5E9EVsXTHudn2MTB6KfLpZkB+V3NLA7a8zl61CA62oq/8Faph7h0LwbxaoxlAQRy
         zwWckbId18vkN0LXT+gGcsys00+jeHPEZJqunnYKjXr3bqbSTgemyvwAeXxzU+3aqS7S
         FVwgy8aPiiiV7HHbi9ueD8Qd28zAZQfAwaqRooJF1u2pM+9Y2bWY+r5Dt2xt0rUuaRwn
         4pNrPUFkXH0euxW2/X1U2y42o1PMEg2av3taZFR4LbFY35885da9ImYccXWAV89c2eMI
         0HsMMvj1dYVJtPvIt7DtCPACIosMVhObgKdpeIDwtoejtLue+2GMNiULo/vwck15AuDq
         cobw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MVvD+a8T0Lc81M2SgYvZ+Yt+89POCdnsUJ507OhxC5s=;
        b=Lwrrc/J6uAA1BiyxJYyewaa/k3WBWzMJvIqT4wkw8IbRirOF6NhAQqBiGLyq/BKUUO
         VZQnkIq0q+uTBqkj6EZT9fTEff+jT7Wt9xj9JDLE8JQTzSRGgMz7xm1phy5P0lJj4559
         rIWTICNmDr9stYRs7EG1ZGQeIFz3NO+smyd04J0sK8sJHM0MflbLsnIBtFOZ+EIR6xqX
         VdiKYAMJAMuqqojcVUFkpbWP03wEl+onKcHOe3F9xk1NHUTxDBLmZqnjGpGzGBt1kcJJ
         3CvjkdORNm3jewQRaWqWTM0pvDgebp6mKYoLCpwweuuaY4gIoYlYru4+nABTq/LCJM6z
         ZBZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOH5xt2M;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id m18si393609lfr.11.2020.11.10.10.33.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 10:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id a25so10130965lfb.2
        for <linux-ntb@googlegroups.com>; Tue, 10 Nov 2020 10:33:43 -0800 (PST)
X-Received: by 2002:a19:418e:: with SMTP id o136mr47635lfa.80.1605033223385;
        Tue, 10 Nov 2020 10:33:43 -0800 (PST)
Received: from mobilestation ([95.79.141.114])
        by smtp.gmail.com with ESMTPSA id 133sm2699139ljf.90.2020.11.10.10.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 10:33:42 -0800 (PST)
Date: Tue, 10 Nov 2020 21:33:40 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Wang Qing <wangqing@vivo.com>
Cc: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntb: idt: fix error check in ntb_hw_idt.c
Message-ID: <20201110183340.77xcobfsnz43vsa2@mobilestation>
References: <1604655811-31933-1-git-send-email-wangqing@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1604655811-31933-1-git-send-email-wangqing@vivo.com>
X-Original-Sender: fancer.lancer@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kOH5xt2M;       spf=pass
 (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::144
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

Hello Wang

On Fri, Nov 06, 2020 at 05:43:31PM +0800, Wang Qing wrote:
> idt_create_dev never return NULL and fix smatch warning.

Thanks for submitting this. For the both changes
Acked-by: Serge Semin <fancer.lancer@gmail.com>

They are mostly unrelated though. If they weren't trivial I'd have
suggested to split them up into the dedicated patches. Since they
aren't I suppose leaving the patch 'as is' is ok, unless the subsystem
maintainer thinks differently.

-Sergey

> 
> Signed-off-by: Wang Qing <wangqing@vivo.com>
> ---
>  drivers/ntb/hw/idt/ntb_hw_idt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
> index d54261f..e7a4c2a
> --- a/drivers/ntb/hw/idt/ntb_hw_idt.c
> +++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
> @@ -2511,7 +2511,7 @@ static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
>  	/* If the top directory is not created then do nothing */
>  	if (IS_ERR_OR_NULL(dbgfs_topdir)) {
>  		dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
> -		return PTR_ERR(dbgfs_topdir);
> +		return PTR_ERR_OR_ZERO(dbgfs_topdir);
>  	}
>  
>  	/* Create the info file node */
> @@ -2756,7 +2756,7 @@ static int idt_pci_probe(struct pci_dev *pdev,
>  
>  	/* Allocate the memory for IDT NTB device data */
>  	ndev = idt_create_dev(pdev, id);
> -	if (IS_ERR_OR_NULL(ndev))
> +	if (IS_ERR(ndev))
>  		return PTR_ERR(ndev);
>  
>  	/* Initialize the basic PCI subsystem of the device */
> -- 
> 2.7.4
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201110183340.77xcobfsnz43vsa2%40mobilestation.
