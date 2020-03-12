Return-Path: <linux-ntb+bncBCS4BDN7YUCRBE4RVPZQKGQEIUTXLLQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04F183D79
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 00:41:09 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id e2sf4607051pgb.17
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 16:41:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584056467; cv=pass;
        d=google.com; s=arc-20160816;
        b=dIOG3nCW4QdPUJmMm3fxn95zBXs1CwRTno7rOeK8Qz6ti61Ew80wjVy4zy6VyYsk2+
         jVnTbgOGHv9yL1bIxFdn8cA8sPulebqcLvC2+lav9FUqjl5+Tv0tpHtjlC8gRJ73nMZI
         8IKaMwqq9m7gROmlrdsFxhoelozzhV+yCF7KelnB0UOkRjKhrfp6DnUo6ojzIqYFpvKE
         Vp/CMbE9X/mShQ1s6YwBw3+E5cUpU0qUhRCf7VAcbnmkdAFvEJt48M/5g+brB/c7vV1v
         nf+0Ky73L3Jla+UNdgzEkkGYXHpPjppPQxPmMt5jdFaM9x3+gzOeWbor565zzZPf9Ci3
         0qaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZRNJTd3+zPMqjlcrg3HXyOhg/IvirewSMjvYJXohvxs=;
        b=zaqsAhUISL9eHhmKZnupAtlqDGfKvhlglySsyqsEe1iF1Za4n70v+wLwVbKSp3X4WE
         joAKzO/d+BdiMbE6ps8VP+a2xGgf6uNQObw4boY9dAaH7Jy7v6L60tEvX1/nD/qkiQDw
         hR6j4y9UUxYcYrOnf2Rq+Ewsh3npukktqpxzbWOKX+tADvTPKiAkAu4bLVLqF0u6Tfel
         HPINBRylVFBV91xCsaTFPkqQ8dRg+lFMkz2QLk6bUNXHQGXADN35RZJLy3z5FSgmsOXI
         KRVKBbdRs9fdCz0AKN9d9wZDlYJukepju/iLBpMG95/fXs63Ustu4ayASpDmhpjYaeMP
         PBqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=WaKIVp88;
       spf=neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZRNJTd3+zPMqjlcrg3HXyOhg/IvirewSMjvYJXohvxs=;
        b=GoNZyRgj1usfiNEO3XFg5DLO2ohMz4fetmGt0qUc1SwF8eZI+DryeSKT2+kl4mcT8d
         hVYjILynQ0qidQeAM+1MlIcrh1aCh+vssq+3nVkTy7eRsUfp10iMOS7QIXinKPT/6MC1
         BbsKp5/7m46hoY7S5t12NSWNBD5R+iRYpxKtNk9tM2JvWzKvuj9QPd4tyYa/yTlyZT2h
         Er1D/sHwt3x9zmHTScIEY2E2v8brIpRAxyWJjMdBHlfiY2kMA9nbPu9rmNsLGPxULdma
         mjMY7h9b9S/sI8Qk1bimfyqFkKl9WHcSuRg8h+Nn2kaiCJeGSY03MBzoZ/zhsVCFfKxt
         9Wrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZRNJTd3+zPMqjlcrg3HXyOhg/IvirewSMjvYJXohvxs=;
        b=TOsEa+x7mJe3pEH4JgegTWzrXNFxi+MFvQiurmQ8Q2EIvsTt1Uff9C3/RWccSEo8aQ
         uXxaPEEDGFJiWJhSt08f8kP1KqG98JppVsKbHQVCi20nW4/nqMPj8OfAn7ydH8qVJ85d
         IaXByZhpePWXszkK9r7VEYbVx1wslf017X77CKxuAEBldl+ICXDyZsbu4Knea0h8fn4u
         Lk+eUxE8/GraU5tPz6CTDbGlv8lGdONpZuRo4wKNm1pxy0Oi4HfZV8qGLnuNTqxSNYX7
         9joLaKMaGany75xotiVMMmKVPKbOdf/MVVqXVAlkLD0xmBv0fICk7jM9WgTZL57cxeP1
         TWFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0BmsyacKEzFcVVQWH0gWaQrNkUEiRyhdg1AEGA8kHr8mdk3N33
	aBvwuTr1yYd3TYm5MpsKngw=
X-Google-Smtp-Source: ADFU+vsF0ouF/GgLA+d9ZWJrSxPuHoBJFvlzX1P6eWCKFxiSr8W+FjHDzjNzK2rLosHiTAHPZDvHBw==
X-Received: by 2002:a62:4ed1:: with SMTP id c200mr10620723pfb.207.1584056467474;
        Thu, 12 Mar 2020 16:41:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls3240894pgb.0.gmail; Thu, 12 Mar
 2020 16:41:07 -0700 (PDT)
X-Received: by 2002:aa7:9af8:: with SMTP id y24mr11006500pfp.91.1584056467057;
        Thu, 12 Mar 2020 16:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584056467; cv=none;
        d=google.com; s=arc-20160816;
        b=n2HGyojT2atxGJhsfYmzajhfKxVLFThao1SMXp/OSPaeSN7eLIPcPIbr2ZtfGS+qcc
         Obcq8SjQDPda8wHAnJ4KoEVHcE6zRDVut66RcMWmPeUDwylrma+fVjjM4jIWtISsPUVi
         Q/D7y6k4PnDevSApAs1IYRQBhN+mQ5q4VU0wt7mOAtleskxyPo61TyiOL1MJ4u0+Iib6
         H+uX+IpjaSdkpFxLkiGv1ZAnPxk/roBmbM+kmb82/Iu6Qi+8gaWPH82N3hkSeTZy5Rp4
         AexrEksw5ccNWpOcKPGg3BMh0WoYQ7AgH1nGum7XviHP0dopHvkow7za66ROIZ52Y3HZ
         /Z0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IR1ZGYQ7bBis3tQYz0/gm378y+F3aklMnCupK17WvA8=;
        b=1A0PDhZ0a3xClLeP+S5jDmqhcvz10SKiIgQd720Q6ap1sDp3sQE7pRC7k/2Asd5yzi
         2C2F6mamPLgpAcvkWY0ddxzcXvthEyhW4ZokicVYihiAtP5pcwFkOS+fvymrbTiBIRVJ
         RlMIYPZJJxaUwgd1VYcHWz95uAkLUV26/imoKb9axBg0yD8aOb8ELgaqh1+Z4oWA3POl
         5OjyltKc6n110PUohaJPbP6oAvza5aNnSMD0ppeRXd1eIynhWGNQG26BsZp9+tQicE+I
         8SewuFOfsEqmLj8onPpyYOwfp0UXqIE5CooIOLpTdorhF9TWFyQUMIFsRIBFtZF4R44A
         Q9JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=WaKIVp88;
       spf=neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id my14si319857pjb.0.2020.03.12.16.41.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 16:41:06 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::842 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id e20so6030377qto.5
        for <linux-ntb@googlegroups.com>; Thu, 12 Mar 2020 16:41:06 -0700 (PDT)
X-Received: by 2002:ac8:714b:: with SMTP id h11mr6194033qtp.21.1584056466073;
        Thu, 12 Mar 2020 16:41:06 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:38a9:cfd2:746b:b1f5])
        by smtp.gmail.com with ESMTPSA id 199sm10037112qkm.7.2020.03.12.16.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 16:41:05 -0700 (PDT)
Date: Thu, 12 Mar 2020 19:41:04 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Helge Deller <deller@gmx.de>
Cc: Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, Serge Semin <fancer.lancer@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntb_tool: Fix printk format
Message-ID: <20200312234103.GA13046@kudzu.us>
References: <20200114192247.GA30840@ls3530.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200114192247.GA30840@ls3530.fritz.box>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=WaKIVp88;       spf=neutral (google.com: 2607:f8b0:4864:20::842 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Tue, Jan 14, 2020 at 08:22:47PM +0100, Helge Deller wrote:
> The correct printk format is %pa or %pap, but not %pa[p].

Thanks, pulled into my ntb branch

> 
> Signed-off-by: Helge Deller <deller@gmx.de>
> Fixes: 7f46c8b3a5523 ("NTB: ntb_tool: Add full multi-port NTB API support")
> 
> diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
> index d592c0ffbd19..69da758fe64c 100644
> --- a/drivers/ntb/test/ntb_tool.c
> +++ b/drivers/ntb/test/ntb_tool.c
> @@ -678,19 +678,19 @@ static ssize_t tool_mw_trans_read(struct file *filep, char __user *ubuf,
>  			 &inmw->dma_base);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Window Size    \t%pa[p]\n",
> +			 "Window Size    \t%pap\n",
>  			 &inmw->size);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Alignment      \t%pa[p]\n",
> +			 "Alignment      \t%pap\n",
>  			 &addr_align);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Size Alignment \t%pa[p]\n",
> +			 "Size Alignment \t%pap\n",
>  			 &size_align);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Size Max       \t%pa[p]\n",
> +			 "Size Max       \t%pap\n",
>  			 &size_max);
> 
>  	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
> @@ -907,16 +907,16 @@ static ssize_t tool_peer_mw_trans_read(struct file *filep, char __user *ubuf,
>  			 "Virtual address     \t0x%pK\n", outmw->io_base);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Phys Address        \t%pa[p]\n", &map_base);
> +			 "Phys Address        \t%pap\n", &map_base);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Mapping Size        \t%pa[p]\n", &map_size);
> +			 "Mapping Size        \t%pap\n", &map_size);
> 
>  	off += scnprintf(buf + off, buf_size - off,
>  			 "Translation Address \t0x%016llx\n", outmw->tr_base);
> 
>  	off += scnprintf(buf + off, buf_size - off,
> -			 "Window Size         \t%pa[p]\n", &outmw->size);
> +			 "Window Size         \t%pap\n", &outmw->size);
> 
>  	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
>  	kfree(buf);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200312234103.GA13046%40kudzu.us.
