Return-Path: <linux-ntb+bncBCS4BDN7YUCRBU5GR75AKGQEVT4M6AQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CF23425001E
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 16:48:52 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id u7sf6752550ilj.4
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 07:48:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598280532; cv=pass;
        d=google.com; s=arc-20160816;
        b=OwWxQmy9sQ0ZseHmaZwSjELKrY2Z68LxnPlxdufhaOvEoZW+xnYOqjknGPWA/QoaFP
         Yp1cthwsL8a9dL7FzVxTrcay3GA1uXRHLhX9rtDRGVntj0Wqj03dW6Wnu2Zrrkn56qWG
         vA1k87W0F+9ID2/67Q/26huMIw++SxQ2c2K+8sHLsLIJ8lgjl0g6Y3z6WvOTTwK5cFrr
         YvCuJalePPvgCvotKrjnQIb6GRLX5MLET74BQT4ikfP7+nmaxbaCVHsb3F9Er7zpefbR
         hdVSNUg1cfmWY2CXb+3WcXXDqqMaJavOH8khn8EhDtefKBua/Ybfjxdu7OoqQyVkXxlt
         X9ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oUSQxvIdgluy2uZp/6vh9jz1CTQsaH9yxs+eu4WOP3I=;
        b=EN7lqlk0TjkDrgGLj59PHwgnJjCktHl/KPuFW+LNsWoDvdOumJGwGTGyLbBnx641Tw
         37azypO70mRsbUbYzYnWxzjqnepxrzuC5ySoA+tcenRSy0IrfkoKJukc2btLE9ILT2Nz
         p9VnVyCZ+GHGB1Pm8UOAbv2Om31HZh9BrZ1Rn35t6WNDgs6p/tIz3zi5yU/DFRNOEP+v
         mD5hmOb7Gj+1Ou978Czh949uE3B12aEJ949kfgyaMrWEvcq+BkroLNQFpsLDEWEHsU1h
         1djLirPhJiLxqXA2/q4gvSVjml8m0ahxo0RC3JRPX+e03NyKaI/CL6OpUYEROt6SqcTj
         6HuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=jZOibYqr;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oUSQxvIdgluy2uZp/6vh9jz1CTQsaH9yxs+eu4WOP3I=;
        b=MTa73M2TAoZMBO3M4+ZQvpeQxAWqNV/KFOJZ8OEXgm4eo87JQZRfBSE1jD7tXK4gwT
         xuesncBkHWvEKsbgGNTtXw2LVm894kmyXa0T5ffZjr9zh/66/bIhPqZ0ZoR8bDtR1ZME
         2r6GO6KskNcM47lf+sl4tmMMe67fPdzlyZ3UjYn6NIsGzyKM1MQa8Shuk40oL8MDN1xf
         z9SwoUAf7kVPIpbEoTfv7Jma2u6CHyvrsTsnbOryfcF3AoA6DKAnHZ0LMAJo19ogQdyL
         yeIksBOpy9nROFGiJfsmORmEK/MMdz4yOlPiN8eJI2Ox+IKpYMMhJgoiZdudBApTrS+E
         Vsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oUSQxvIdgluy2uZp/6vh9jz1CTQsaH9yxs+eu4WOP3I=;
        b=isOsGtgD3xXiz8b8JZA8nSFE/FCKq1Gf5O/KRJTS90Lfml+kcw1SeW2ONE8IxT3n/i
         Thm74850JDsVpxFlOzQ3iEifmKpjTh1THA2/4oMs1uREcT/0RY5ANtN/4DeNEKWRyjfc
         DhIVjW9X+HmUBnuUyhBKNdUwwvCO8TmQgRK9xTw/rd0i8vlS9tId52QDlUgOEo3f3wMJ
         3W/BSVVBVr9DtvHzfaGq9c6tNqbW25F0e/SrqTaoXaaNU2oq0yUFDc4lOKmBwSobXIoO
         QTkKLlvmkVTfV6BQN/B508WEPmxxiZYHDFAf7mwG0k3hs3xKYlo3Ji0VdV+vSInUuSQN
         EVbA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532v1ji+HbXnJc9tEU/Qtocor6wHstCUpiuGrUETTPUMgtDlRCrz
	SsXKYhnTO37f33MzW+rJGFs=
X-Google-Smtp-Source: ABdhPJw5NPykjfc/XK1Wq8VSmMXtTdActvO0est8WQU/eAqsrAe8oM+O8C7SIMSvts2O2heNTEiPXg==
X-Received: by 2002:a92:89cf:: with SMTP id w76mr4809741ilk.215.1598280531694;
        Mon, 24 Aug 2020 07:48:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:22cb:: with SMTP id j11ls1254393jat.8.gmail; Mon,
 24 Aug 2020 07:48:51 -0700 (PDT)
X-Received: by 2002:a05:6638:12d4:: with SMTP id v20mr5662591jas.108.1598280531322;
        Mon, 24 Aug 2020 07:48:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598280531; cv=none;
        d=google.com; s=arc-20160816;
        b=wDty/oXo3DlRPO0GuNwojwzOFGwzgCrOfyLQyHpDa0nO/aK3nSvovDXyOz38bKo+j0
         wi582jv3qrK8iYZ8kuWqf2x2OQ+u2XGYqLClj/C9AMp+UPHLHG7IBVEqZd+VyNX998Sd
         EJ9u60gZjHe+L3VSW7vrbnMihBVD6Rgf/+iLDfEENnuJsnBDw8THHtoqFxvzB5HkhQdN
         7EajB+Q0tO/3WmEo75Y7qMt44U5Kqsq7Zup+K3TcIaySEVfNsHPbLIJwcXqSpASTRc17
         J3+DE6LeRuIclphu/KxFCGEG61JJMt/S29M5ts64B3o4rBT8WvBARhCX92sFszomzdk5
         SEig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p6Vs4y1MPS26d6uchTo03hUjOtrM0pQETRvKS6X2Mbc=;
        b=WLHr2SBxU9P7L/otschVEpbLCNAjbxQzq5EmqSxbS6llaWPNgu9yo6IArffuTJXTeD
         TyCehiuld1u8LdsLdkrhSEhEuMQ+RSZ5aCv/5Z5lgD0gj0nqdUINeuRxWbJr8q7in7h4
         mb3g06G8oIG4Cja+yOFG7AAPJwpFVMudrIMe+yZIne0rLnuiJz/fOWb8VklYqAFhAfOK
         2yfL2jMB5EYFOb0d0GTucPPYCP5cgi19Kuvd1WonYjI4coSOCf/dO2RmX1WhJajWZFIB
         U0O37lA1Oi0N/XxcL8gc8NkwbsoEzLuAYuSZdUgTXYfVGgMUQLYmE3V6M7wLOTuiDHSm
         ZxhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=jZOibYqr;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u9si555570ilg.0.2020.08.24.07.48.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 07:48:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id k18so6299841qtm.10
        for <linux-ntb@googlegroups.com>; Mon, 24 Aug 2020 07:48:51 -0700 (PDT)
X-Received: by 2002:aed:364a:: with SMTP id e68mr4989396qtb.260.1598280530761;
        Mon, 24 Aug 2020 07:48:50 -0700 (PDT)
Received: from kudzu.us ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id y3sm11583032qtj.55.2020.08.24.07.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 07:48:49 -0700 (PDT)
Date: Mon, 24 Aug 2020 10:48:45 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Dave Jiang <dave.jiang@intel.com>
Cc: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntb: intel: Fix memleak in intel_ntb_pci_probe
Message-ID: <20200824144844.GA27238@kudzu.us>
References: <20200823065512.11626-1-dinghao.liu@zju.edu.cn>
 <396e55a5-7ebe-1e81-b1b6-9a53cd885a8a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <396e55a5-7ebe-1e81-b1b6-9a53cd885a8a@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=jZOibYqr;       spf=neutral (google.com: 2607:f8b0:4864:20::843 is
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

On Mon, Aug 24, 2020 at 07:37:56AM -0700, Dave Jiang wrote:
> 
> 
> On 8/22/2020 11:55 PM, Dinghao Liu wrote:
> > The default error branch of a series of pdev_is_gen calls
> > should free ndev just like what we've done in these calls.
> > 
> > Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> 
> Thanks Dinghao
> Acked-by: Dave Jiang <dave.jiang@intel.com>

Added to my ntb branch.
I added 
    Fixes: 26bfe3d0b227 ("ntb: intel: Add Icelake (gen4) support for Intel NTB")

Thanks,
Jon


> 
> > ---
> >   drivers/ntb/hw/intel/ntb_hw_gen1.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> > index 3185efeab487..093dd20057b9 100644
> > --- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
> > +++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> > @@ -1893,7 +1893,7 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
> >   			goto err_init_dev;
> >   	} else {
> >   		rc = -EINVAL;
> > -		goto err_ndev;
> > +		goto err_init_pci;
> >   	}
> >   	ndev_reset_unsafe_flags(ndev);
> > 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200824144844.GA27238%40kudzu.us.
