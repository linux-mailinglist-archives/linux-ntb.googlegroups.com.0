Return-Path: <linux-ntb+bncBC3JRV7SWYEBB3W2ZL7AKGQER4ILIGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 158A12D6AE8
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 00:21:20 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id l11sf5001400pfc.16
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 15:21:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607642478; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzAB6REQGKa6SbLZhqerRNgGV5LlYsFbzH7PJI0SJ22yiGRCxViMuWMYUq8qVrQSrs
         M1p/tO0BGu+3DRkOkDnuY2oiFTSPTvsBoB91vlh2wbvUo6+7Bt2YtxtfNKRDd7AeA9a7
         OQtyTdiS9uDg95A2NG2eGGVXMPzwMywNw0WrUJOMUkwjKFRHFesUx6GtIrNfExOhdJlX
         TITXBtElEc2R0NBlfI6XTazQNNpvUYtWp98NEZwIJ2Pg82zo+ubnhGeUm6cV3XR1ZPRJ
         7GveN2cwU+FnyYQG0IPsgSJl0GZMZSMKpR1yWtg54/rrrqz2Q8LvcrGuokZtnudOa/d4
         Mg8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=EIFNzN2qfsxb8o0mo5JeDkOoNNB9wuwNsRPmsE7P3Nw=;
        b=ovKlT1Svy7a0UJ9yly/5DZnvHHCSK0Mv5+wzcJ6Mk6jOsRc8DB3c+5stqgMaVZiUw6
         rxOVP/7tuz+a/MwptxE19x2DfjWy6Y5MX/jQUpP8sx5NEUgxQBOBlBCKVm61WQ9VK4+o
         sge9dUtlnIMlrKVAvkWjjH7sIP/JVi3kGLmoHTIk5ff7fRNFLiG0QE766FxirdTEkMqr
         3xWp3hTtpCfsfPiw5jrJZI8HjypVbeKF83uM6JtuDjPxa6hilgN4CJB0VZPL9asFlvOt
         A9uxKCs32fQUfSAd+l5GfNN3XDVm/myEGumDF4+NReZjaZ0OxS9XI66xxg/RgZWvVRTr
         9Vgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=u+3l3VwF;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EIFNzN2qfsxb8o0mo5JeDkOoNNB9wuwNsRPmsE7P3Nw=;
        b=BUWzJf1pJYn9Lu91Q6QDxVeW32AUay16SW1cBsgXnis2ziMvTySyosRPWqvu0oHN1X
         oiJWmChGkH/TEb4WFoxucmM+2pUN9poLWZfe6ZSGRltxATx5N6PL/bxrCxxX4SYsN1Qr
         bwt5+5BUrpd0IPEp7jDRG+4d422syA7GMqb+wVVMytujTZcmqxRLrq1NJNt5tR9Jyzkb
         FT4s4XWBw4X2lnCOoETX1sDKpEbkFqoLK8zWxlLNyKmQMZ77AU1tTdP5MMF82n/+knI/
         OBtnizEfTStMOF5Umn28kDl0ZRdec2NvZ/0DylpC0fFWzKsWhhwWwIVP8Wlb/g36olMd
         vBdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EIFNzN2qfsxb8o0mo5JeDkOoNNB9wuwNsRPmsE7P3Nw=;
        b=JRUIuKoJNbKBk9804M1WZC7G/KnGnJxTulZdXcShXWRBhs9EGIbMuX056UwC1geubb
         m7CbeNiccKRcMsQeT3L2XK0Ax4LAQRcRZ5jbaHBY5pav4/S5CASgE665Fw1ubXyWP8m7
         nNQfSxPHVzUrH5w6VxWDoXY4QtT0lVa4zIdmIYF0CoQv0vAgtf9x0PPsrZAQMytlVk+s
         teGTeUQhv15OpeY2cMCvDRnrvbMr4ATHcrVGqpeQypkmdIbB4olKtoIxf6+1z30VaP0I
         C6b4kDihbHHw67z+S4a1a4pumHSs0Xgk4gcgCG4E/ckbtyKE0X1f0yG55DpB7Lb46Kai
         MfOg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530WPAaiXrQdrEJENGX/procdjHh/r2oRJoW4t8kN9nY9o4GsDPt
	S85nbQoZnFmXKcJ0vs8yh/Q=
X-Google-Smtp-Source: ABdhPJy4M84qJBQZD3wj2ckbJXNp9Af2aGNIcQUu0M9gVdy5+qNZz2HlX6Hs1TNZjZ5mD3rxdGFGqw==
X-Received: by 2002:a17:90a:989:: with SMTP id 9mr5971221pjo.162.1607642478776;
        Thu, 10 Dec 2020 15:21:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls2613883pga.5.gmail; Thu, 10 Dec
 2020 15:21:18 -0800 (PST)
X-Received: by 2002:a63:a902:: with SMTP id u2mr8917964pge.263.1607642478210;
        Thu, 10 Dec 2020 15:21:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607642478; cv=none;
        d=google.com; s=arc-20160816;
        b=fcIBscmknihpw/DGFz50UwuLEv0lrGrzbzgR7HxT0YsfT321RI3h47LwT9J+n8DMYi
         QzhLfuhu0mKyApUNPuhJ+6XAgdJHqT6BTuoCJY1aBcuNfpwBADcsN15/8y5JonoYkLML
         rnEDQg+0w+mIfP/QBvtVG+9qY033A+J2LERvHF3IRSiLzJu1au2xBJdgajX4q0iqUmfd
         laLGKd68TfW8MQopyjjxfivtZNjPvAW2maYTwSmtS+ZfmqE01AArfb+QsSvdNFCInPks
         sQyK11WGTBQN4JWceaHfmh/25HOeVBN0zAzTUPCVG4XX7ATTd5wfayKK5+agOdI80jgW
         vw9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=+7Mm8NoMJp9j52xNSSS3U0SBEUJij5+TbHj/sEGWvTc=;
        b=CA7NAEqpmYTdAd2de58b5p8S35jhj1XoSr97cgN9FiJ1In1Qw2GCZEJTHLNR+n9nvD
         CAlgcNCaeeUfJOYzxjZvskVwnR4NO2nIh03Mopj9DRndxKnXZkKpbEORWY4ZnCY2WLYp
         e2E9XRuIPqvw7J4umr7kiK2GuLfTXKEtG6IRnxhevyPa4PE6+JY6p7Lx7SVVjn9i4g7f
         vzuB/3/tktfhBesAlYpy2w7Wpyh8Q4s/hw7WiEGidvUg4v1h8AX/ssTHgGB7I0F7VkOI
         HcFRXWuVdk+rqoKxZytGLOzvIMalXxt5KHxajRnkPsPjqijEnesYG3fIYcSqBE2WdsTt
         rzUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=u+3l3VwF;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id e6si557921pgf.3.2020.12.10.15.21.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:21:18 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BANJcXS003074;
	Thu, 10 Dec 2020 23:19:38 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 357yqc85cd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 10 Dec 2020 23:19:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BAMxr2o074450;
	Thu, 10 Dec 2020 23:19:32 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 358m52xf7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Dec 2020 23:19:32 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0BANJPdu022291;
	Thu, 10 Dec 2020 23:19:25 GMT
Received: from [10.39.227.125] (/10.39.227.125)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 10 Dec 2020 15:19:24 -0800
Subject: Re: [patch 24/30] xen/events: Remove unused
 bind_evtchn_to_irq_lateeoi()
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
        Juergen Gross <jgross@suse.com>,
        Stefano Stabellini
 <sstabellini@kernel.org>,
        xen-devel@lists.xenproject.org,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
        linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
        Chris Wilson <chris@chris-wilson.co.uk>,
        Wambui Karuga <wambui.karugax@gmail.com>,
        intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
        Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        linux-ntb@googlegroups.com,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
        Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
        Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
        linux-rdma@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>,
        Leon Romanovsky <leon@kernel.org>
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.972064156@linutronix.de>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <748d8d81-ac0f-aee2-1a56-ba9c40fee52f@oracle.com>
Date: Thu, 10 Dec 2020 18:19:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.972064156@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100148
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 clxscore=1011 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012100149
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=u+3l3VwF;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


On 12/10/20 2:26 PM, Thomas Gleixner wrote:
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Cc: Stefano Stabellini <sstabellini@kernel.org>
> Cc: xen-devel@lists.xenproject.org
> ---
>  drivers/xen/events/events_base.c |    6 ------
>  1 file changed, 6 deletions(-)
>
> --- a/drivers/xen/events/events_base.c
> +++ b/drivers/xen/events/events_base.c
> @@ -1132,12 +1132,6 @@ int bind_evtchn_to_irq(evtchn_port_t evt
>  }
>  EXPORT_SYMBOL_GPL(bind_evtchn_to_irq);
>  
> -int bind_evtchn_to_irq_lateeoi(evtchn_port_t evtchn)
> -{
> -	return bind_evtchn_to_irq_chip(evtchn, &xen_lateeoi_chip);
> -}
> -EXPORT_SYMBOL_GPL(bind_evtchn_to_irq_lateeoi);



include/xen/events.h also needs to be updated (and in the next patch for xen_set_affinity_evtchn() as well).


-boris

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/748d8d81-ac0f-aee2-1a56-ba9c40fee52f%40oracle.com.
