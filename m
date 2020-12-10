Return-Path: <linux-ntb+bncBC3JRV7SWYEBB6O2ZL7AKGQEITTQSNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BF02D6AE9
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 00:21:30 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id y82sf1606804vsc.14
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 15:21:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607642489; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZriKIDbYxZRhT32Zm+VG83hDYUEvLy//+5P9NvgYZnlmPNp0V/XLi5C00rb0t0H+1
         2ynKdiBSt0bMgRFAoFc6mKZ8nAxVpRmzaT4dVTS+/eWY+fzO0Owv3r3xK1zOXVNnKjaY
         DKioQDVQ0GG1sWW+r9XbRhXo6D1MSExeMcjeNbrrw+5h9A6mIP7dpKrrn0dcUT4svZb7
         3jkSOPjysNxRVRkilQhH26VByMlTzfdRlv1fTeNtNVwl9J3gViWfADE29sg6j22nZL8e
         QSbeWHi/bKORodmEGWwSIgMSFv8Ry31TEMQ9o1fjE8lTKe0FQpmFwRrudX2tQyIZkwGs
         NNsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=7yYYphvYs8owAT+xMKOoZ0Jy1FtMoiE9LxX0R2WoHAs=;
        b=1CilHBI4Wf/I2uAeHkZk33BNyfrODowKAV7+RQkfRN70tUaNhzdTdtCHAgqwX/U2E1
         A6/Vk3/abCSVCwfqrXner7ytC6dY/aPCFexFE1a2ULT03w4TDqNFntncnRXHWSrtMlaW
         2US7N0BaLKiTnjrQxoqn/dYwEDUyBF8xz4eshFSbtc5rMosBdvTcKh9G8oVPS2lNuG6H
         LLtoLtXnWKMu9UVuNBTqKoL0Mf7H/kRrONmbD/96mhYw2/aT9ysMNXblvIwyBXwb5VpC
         yhdDEZfx43+5QmXKsj4LcpHBLzwJDLyGmK0UvwtXua5T3uknhY75TskqacA+BbgLqtaS
         F1sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=yiiSqUT1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7yYYphvYs8owAT+xMKOoZ0Jy1FtMoiE9LxX0R2WoHAs=;
        b=K8YcsA0TfTxqkgF16+y/BczBM8p7jewvwJU7eYqgKDtSoaP7PaZMBsY7u/fPIMDi8k
         qmRKNLbOkdh1zi123Aa4zjmcm3k0ie47OdfGj9bKkXIbyxlWmzwrt4gJ2mtsCr2S0E0B
         B6CUamp4hJodt+C74tFtnVGbsYQYS+NZhzilD9cFbL3wYwhV1pZ0vcqpKdnUwdFFGFk5
         JPcxRA03bL5Uqb1nMZkXVcSUhxE1F3+N/Da5t9Vb+ZkjwOiyiJ120EKLzO2RxjX2pHHm
         3lE7CGqCYWH/SsKzkJ3/vGlCXa4FGdJpKDkNgnorPAVo1eXq4kynvijHkyAllIC3jNjT
         oYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7yYYphvYs8owAT+xMKOoZ0Jy1FtMoiE9LxX0R2WoHAs=;
        b=j47VrHwr224s6Nv1LLprOM2fw4Pq36/EECvg/cgiYI8cp2Ychw+UgEQMPtCOxIKT0n
         lorr9Rfnf2GALsKha1e0YCVYVl4UeQYx92bbV8FkU0PXbaBiqq8Pefr8hwyCUMWhbxT9
         yLxVlM7EychP18le62wX5mDQdRuKGx4ykPF8rC5/ZCtq4FWCrUxGmQvwEZ6U8BWxDFzh
         NqZHa+98DcVChak2mAQl2f68FT6sxIbQq8XGY3SYiwBR/uJIwuXgzX6MPdEnD95SR5dZ
         9QnBurGbMAnmzn3qOqYaFWEvshiyaQxWLzhv0F4G/xdSn0A4kzCa+cLg2L/D4x0FLqTU
         pU+g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532eRS1Z9tt67L7wT6u6YJ3SkUjgh12bye8bHG8n3lH9xizSJDYg
	eYh2BJ8yA8bdwhVS7qjttxU=
X-Google-Smtp-Source: ABdhPJyG9fzW/YW5GEVGM63iYzPZHHqU3gsJaIizAhmXvAuvoIoZ8cTUXGgaYfoOlrU9DLS1VXdmIg==
X-Received: by 2002:a67:fc87:: with SMTP id x7mr10443064vsp.38.1607642489146;
        Thu, 10 Dec 2020 15:21:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:6155:: with SMTP id w21ls484163uan.0.gmail; Thu, 10 Dec
 2020 15:21:28 -0800 (PST)
X-Received: by 2002:ab0:6f0a:: with SMTP id r10mr4497037uah.36.1607642488691;
        Thu, 10 Dec 2020 15:21:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607642488; cv=none;
        d=google.com; s=arc-20160816;
        b=tYvF+f/fHXxtOjBCH98VIjZ/sMf8LRonjJ7TSr9pFidseWBUuh674GvpKrrOXVmc4q
         l36pHwFGXljrIgssKcozYxmN0UcRc2DpC59hB15m1Wh0wIOdnRP9xLCyXw0aUGLBNbYB
         +x1rH2gylMACWARLBWC/kUAmzFllIp7gT4DziZJq6wz3zCHT5jZMrt4ScRae2wWb+uWi
         Bht+qv/aDL4XACRKX9Fyac1NjAzdBYzt4C/CzeCoNDIq1S/PPVzVkMNfjMJ/5PeYTf3U
         yvT14zPGmBu+0bB46a7Vhs3FiqTtW7Y65iLUnYcZ2NSxcADb9Ans4v+8P3fGrGpX+WdS
         I9wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=g9HQMgG8/lH1Xl7UdSJNvDAMRQCo3FWW7Bk60ydYMFM=;
        b=HpxvrAJoBl3i/FYvTqihXz1ETNuA/8U1Aj6yWkfxIFD0O+MAkf7XLzQ0seYkgJn6ES
         VIL+XQhSca01uN5ij12D0PQdP0Jk0GusxF6BdvYs1CLBUnKRVjARH8U4dirRq0kE2I8d
         UJcfGaatMUGj85buffbRqIwVUxqYgk7CgA9IuuKf20wWHrQFqpx/v9jVVTTXdAO23Q6H
         Wi5GgJWek9ZjKDCsOcu/eCM6Zjszs0EaPtlimRfl1qmV6J5p8wNvyaf9MXKCtMGdjTH7
         F6t1pCiGPSEq11MOCGLT3M/tOnHXdONN/G66rdb0+yh7EVUCeuIrcOTysfSKjZdBH7N4
         4huA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=yiiSqUT1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id r207si402015vkf.2.2020.12.10.15.21.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:21:28 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BANJcxD076282;
	Thu, 10 Dec 2020 23:21:08 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 35825mg2bs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 10 Dec 2020 23:21:08 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BANKtw7149340;
	Thu, 10 Dec 2020 23:21:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 358m42f5be-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Dec 2020 23:21:07 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0BANKp8g025210;
	Thu, 10 Dec 2020 23:20:51 GMT
Received: from [10.39.227.125] (/10.39.227.125)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 10 Dec 2020 15:20:51 -0800
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
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
 <20201210194045.250321315@linutronix.de>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
Date: Thu, 10 Dec 2020 18:20:46 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194045.250321315@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100149
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=yiiSqUT1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
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
> All event channel setups bind the interrupt on CPU0 or the target CPU for
> percpu interrupts and overwrite the affinity mask with the corresponding
> cpumask. That does not make sense.
>
> The XEN implementation of irqchip::irq_set_affinity() already picks a
> single target CPU out of the affinity mask and the actual target is stored
> in the effective CPU mask, so destroying the user chosen affinity mask
> which might contain more than one CPU is wrong.
>
> Change the implementation so that the channel is bound to CPU0 at the XEN
> level and leave the affinity mask alone. At startup of the interrupt
> affinity will be assigned out of the affinity mask and the XEN binding will
> be updated. 


If that's the case then I wonder whether we need this call at all and instead bind at startup time.


-boris


> Only keep the enforcement for real percpu interrupts.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7f7af60f-567f-cdef-f8db-8062a44758ce%40oracle.com.
