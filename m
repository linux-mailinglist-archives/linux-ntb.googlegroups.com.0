Return-Path: <linux-ntb+bncBAABBO4LZL7AKGQEK6INJ4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D802D68BA
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 21:31:58 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id f3sf4778720pgg.9
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 12:31:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607632316; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBP0ZICjsYGPh1xC3KMMwmURqjEwsXIQi8tfgKeLU25QO4DSbn8+YRbwcKX8RhMyin
         Mht57S2JmT83ul79dvH2qeBZZ++XC7bbBOJjwLeW3D1H5Je9HU3TBoHT8h43ZQyhpimE
         9/3dXA+z9t0IRSOi81kwTUSUy2kHWZ07KffP5yZRXCKKNzvzJ8qapgsLsnGBGnLQANSi
         z1INymxyxShNTOABUXfplnSQGuxOo5t2b/VWybTfPR58n4koU1ZvrnmlO9ZoNG/wvmVN
         PeHGi/QMI6+LPYfZM7YMNdpK5q5DyU6KUTWmotTdVKBazkNzVOITSsSXjRWpiouk0SHr
         OHLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z8ku2TFkS3xe5Ecd41Akg88EVVHGoOS/ijeUMTwtFq4=;
        b=Sw6S/xjhQTsIWIpJou6AMH5p/qZGN9xQ/2Tx6NtTH2nHv0UswLJO9z5m/gvYFkqlyr
         z78/OgWipGGOfIKm6nwucJc+Q6173/FWMuWJdEGhBl1z/Hi8471eDaugug7XO0OPe0BH
         n7d4kQrgjbJhs6B+noCvySTGJcPTiuoypZnB7knOTRIkYhSPpY6rHTEoGAuAIpIhnYVv
         v9vVHw5go5dtN/ZXdP1iwzE8/iabq0fl8qPfHVp/O3BBmqoxP+KbKDDX9A4ROEC2GVEy
         p5D0kysGJOTO8hUTXY3h4/8cEWUF3KyZRzx6x1Abz3Nrt6tRiqWrqfYJZHRKnrbJWzt9
         6llg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=qJ2qXmRZ;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z8ku2TFkS3xe5Ecd41Akg88EVVHGoOS/ijeUMTwtFq4=;
        b=gprfDpVu98nhH7+NMMC+YqAEk0QI90YFoV1+Uxkz3Ityq8kD391HWPSW3AE0P7UJy5
         TZ+aggZ2HYJYTcAQYYfhWaRJA/wVfACK78aU1v3YRkQbNw7xHvpiAALLj4b9yExqAZtT
         Ic72XR4hxZddf6tlYAtnIN/50yxUTKaIb2RzH3fj7ahMtF3YVNMd2gUWoC7wnfVyDoaH
         NzwCTav9YuQ5j0/ERStT5pK8kexCx8+4YJakcNOKALIAHqMNYLt719Xec16Veg/z4Mce
         SDc9xGw0lVuc11NlUUCYVOoI1ppaps2x9eFjvmWRpjk6+HfwSx63zyDAkQsTxK4983eI
         epIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z8ku2TFkS3xe5Ecd41Akg88EVVHGoOS/ijeUMTwtFq4=;
        b=ZYmGWI+I1NCsggHSA3aI6ZSguDuMlrjAHET1A0kzmdVgdW3v+oEZqaH2pFSwVv0D0i
         tuiO8lm/UtFK9XFLEnb9fVE5hfc7AjIXgEEh7kjJLY8jBJ/d9urNfHXUAhb6wPny1khy
         NMxGUEV2qLf/1SlzDK29acFMEkmT6Owj7GQbKfW+lGAm5mWNJ59r1Bte279/Q4gMXzcJ
         33Lhd2hffKq+hQQzCtPFjLFwp/dZTZKh5oPOyylRux5dvSDywL/u4Misdx82NZ52mDUB
         ERYvA9034OgvGy9zVHZgUiKL91BQS27z4nbUNVgZK1n71AjhWwG6H0v/QUrrSKPOFoPJ
         q3IQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532CERve520ZsMZPZrixlEK7Qski5AHOQp2QDjJgJ9X6+5KK0NX3
	+yC4eM4hiHp6Kg7L7J5Pm3o=
X-Google-Smtp-Source: ABdhPJwM3GJwrUjN04OTN56uzkPIAzXbxuRHuZ/+E7hbHo8M+3K9z4eHSz9aI+RsPSgCV//JqYQamg==
X-Received: by 2002:a17:90a:e38d:: with SMTP id b13mr9482628pjz.101.1607632315957;
        Thu, 10 Dec 2020 12:31:55 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:174c:: with SMTP id 12ls2481720pgx.2.gmail; Thu, 10 Dec
 2020 12:31:55 -0800 (PST)
X-Received: by 2002:aa7:8701:0:b029:19e:561:d476 with SMTP id b1-20020aa787010000b029019e0561d476mr8292418pfo.2.1607632315379;
        Thu, 10 Dec 2020 12:31:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607632315; cv=none;
        d=google.com; s=arc-20160816;
        b=ck2+4DMeoxPmgY+f0qBcRFb8RZdmUzFzTCu5FJVgpLfJpqMWWvSq5/QWGhx+fMcTUv
         S4yqTU+U1XBKXHnWrHvZKgBvDD6avpIHITE88CN9tkN3v3eLJEdu3Ffm65UlmJ037o4c
         0okPvKadRDvxIB4S1LsE1lTpdn+CKgOGfCS7RQfIXylnO7WWN9K7wVKPUq5AoAZxOS+y
         /hlFw1v5brc1pGfVpWJFWSP/7oejZBHWh37zSKnljeOs1Bv/xBJUbyHPtFDbOKzSkVZV
         I+gpk/I0RE7f7F8yN05D9+qdF2k95qijJJqxEYBgTXCIfe6luvY54K4PjWC7IcizzJp8
         fXmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3Ov7MsWd2WvcFRWayPftrhptP83tCk6eaRZKMJ1S1Ic=;
        b=b+40rerc7/hQJ5uV5a/4KxmJ9KcL5ig8ZWR19JjEGBfzmlWsZRhWNauTQEN4n7Bw0b
         gbVpefFb1rG0iAFQJ5BHCfsorSM+QLsKkvwxoEH7bq1VdK/ZmcXCILC59IvGVBeUBH/I
         EE4mr6UxXVQSyh140eUVJXKwFhsXzS7rX5ILCKfpP0epNjippTeZx4fMmy7YMxWxY8m6
         VQPMm6C7XyiNJMqrYrEY8lsBwU1fMt3RYKw8KGi2RlS8uztgn8sn2c1KgD8k9q+zjXQt
         MfXnDC7kdOoPoUJtzNvdn2ozLizejrCR4kt5Fz5dzqHvqi7sZe/bMzayBBxszQIavOwU
         yMcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=qJ2qXmRZ;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id mp23si497517pjb.1.2020.12.10.12.31.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 12:31:55 -0800 (PST)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0BAK4Fvx057985;
	Thu, 10 Dec 2020 15:31:40 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 35bst29qva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Dec 2020 15:31:40 -0500
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0BAK4GjK058200;
	Thu, 10 Dec 2020 15:31:39 -0500
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 35bst29qu4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Dec 2020 15:31:39 -0500
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0BAKRkNd013529;
	Thu, 10 Dec 2020 20:31:36 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma03ams.nl.ibm.com with ESMTP id 3581u865vj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Dec 2020 20:31:36 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0BAKVYT024117666
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Dec 2020 20:31:34 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DFC83AE045;
	Thu, 10 Dec 2020 20:31:33 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E2863AE051;
	Thu, 10 Dec 2020 20:31:31 +0000 (GMT)
Received: from osiris (unknown [9.171.22.54])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Thu, 10 Dec 2020 20:31:31 +0000 (GMT)
Date: Thu, 10 Dec 2020 21:31:30 +0100
From: Heiko Carstens <hca@linux.ibm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Marc Zyngier <maz@kernel.org>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
        linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
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
        Leon Romanovsky <leon@kernel.org>,
        Boris Ostrovsky <boris.ostrovsky@oracle.com>,
        Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        xen-devel@lists.xenproject.org
Subject: Re: [patch 12/30] s390/irq: Use irq_desc_kstat_cpu() in
 show_msi_interrupt()
Message-ID: <20201210203130.GB4250@osiris>
References: <20201210192536.118432146@linutronix.de>
 <20201210194043.769108348@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201210194043.769108348@linutronix.de>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2020-12-10_08:2020-12-09,2020-12-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=996 clxscore=1011 adultscore=0 mlxscore=0
 bulkscore=0 suspectscore=1 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100122
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=qJ2qXmRZ;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Dec 10, 2020 at 08:25:48PM +0100, Thomas Gleixner wrote:
> The irq descriptor is already there, no need to look it up again.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: Heiko Carstens <hca@linux.ibm.com>
> Cc: linux-s390@vger.kernel.org
> ---
>  arch/s390/kernel/irq.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Heiko Carstens <hca@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210203130.GB4250%40osiris.
