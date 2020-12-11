Return-Path: <linux-ntb+bncBC3JRV7SWYEBBWMEZ37AKGQERENIDUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A22D77D2
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 15:29:47 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id a17sf5438343pls.2
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 06:29:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607696986; cv=pass;
        d=google.com; s=arc-20160816;
        b=mCslAGzLDxPuR38j6PMG2au718lhNyY6p/I9yRKOXIfatYAtVe5CW1OKxYkX+T1s6Z
         QQSOQtj/NZ8lLLdGcU6lAqtYOEU7Dg/6HQeDDxqFLp5rzqzntmu49926ZC5ny5mNWbv+
         1MdbEj9qkiiocg+jSaCt6GWGCH18fwnlV1Sz8517zCYXjt7/FzXAWZtgNw0Ylb2PIPFg
         87FGE3X61G1Hpx1ZwSalZIHo6MlNV05i0fxGv4dnfofQWH8DidqHTpVItwGjVm7Feko+
         UiOQG81SAK5cYDcyxPEm5Osqz0wdzKjCWAYhSb++l/Agr/bjrVmO+wCFXE/JDou+YrJu
         Tv4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=DY85VmDaQNr/6UZ83BfPXPkClJHA4g7EPOFT83AIkVE=;
        b=hLCKK1+lFLWvcQEvll9DBGq+U0RV576GyOA+fYtzr4kkSQUF0Ld2vks8hIzz14Zism
         Oub44MV7xWVJwsfk9XjZeaNF3k3vs0NOx6Jghhzjoynbzyr5tTnAu4d+5EsO2iHHNtix
         SNGPavfb8Et1aHFCEeWrcJn7NnTNqVdstIAWmWaYZL3RRdzyUlff6kYWdmbbJNqzLwSv
         bsU72oCpSmqItslmvCvN51tja8SDXf4KcABTAiNgWV8mYwUHWt5igmBtgAmh16fcU9Pz
         9uMK8TPvkmx3UbI5NI52tpZRqgs4oqdrE/vDYzIu7+wKJ9OWTRbTY027PrgksqRuqSeh
         bGOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bR7yH4+1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DY85VmDaQNr/6UZ83BfPXPkClJHA4g7EPOFT83AIkVE=;
        b=epqiwPaeO/JuF4SPQjw1T/Y9vvfTG9dzX3gGpE1rzBglpGPONNLInmTlu4C04Q6yor
         llwaT8HZOhBPRJZx4O+JPDMKhbZiUMR8IPDgAIBeTCv+zUWQt8dtNmEbXup54LPfx5ym
         YAsPoFg5xfCxEPj8DHJRmICp+vUZrc0TxRkANt6O+E/wtwOAd4I4Ir+07XaJTRHWr7zX
         IGVVa1jNDDSolc9xa+v8Srb4agvhJtYBv5ej7qExn7QBao1lMW221uNFXcLPhrFX56+R
         UP9+w018Ga2cGVNSchP2vckaGcssVBlfQiAHubRPrOwyOwWcvWKB5QivXjTMv3aHzaxC
         yJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DY85VmDaQNr/6UZ83BfPXPkClJHA4g7EPOFT83AIkVE=;
        b=hTzUf2isSipgAtsAaQhWeovI9pQIFQRFHHHXE/utxTkTSoKJAoGd3svV+9tWjPzJ/w
         Seji0mqf7W/8aA9PAyzHggquATJUOvif4BQDY+OY8Pa1BxJggsm2qbhQp9p4dQeSEz3a
         rvcWi2L8pKqH2rpoEGud+VKFLja4NvYYcpSuQ47dC3Xr9oHNV2bG/cslf6mk8OCBUQ2n
         8EtS3rL3fD1q9ala5k2f5owY42Pz3JkqLlpCCK+IlbjdFWxP/HLTIsDCGGs6EBeeM6XE
         7qVkAL/X1ugqvxktKfSotRXKjFlsNVpu2lri0BTApwv8GQNfCa09eHvC7uJNthZ97pIU
         oyMQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533GSghKZya/T+zwtrWFFsJdTAllRmCAMhSq4krWgIhLb3P/tAN3
	eJZD8AgNlM2WEGKZ7dZFnUE=
X-Google-Smtp-Source: ABdhPJxFXQdwaMa+cxWm//lJK0Ts/BpIYgjmeuozp0EOczVV5J5PPIKRtH7WHI7xrd8Lmh0o0BOR7A==
X-Received: by 2002:a17:90a:5308:: with SMTP id x8mr4859611pjh.151.1607696986011;
        Fri, 11 Dec 2020 06:29:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls4146618plr.9.gmail; Fri, 11
 Dec 2020 06:29:45 -0800 (PST)
X-Received: by 2002:a17:90b:943:: with SMTP id dw3mr13103017pjb.97.1607696985342;
        Fri, 11 Dec 2020 06:29:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607696985; cv=none;
        d=google.com; s=arc-20160816;
        b=JgEGFZFcu2sTuk1CPjxJyxaZZ5YEKSleTmkL/mcGRr+mT761c7Y7p2bnSjl2X85O3T
         /pxlK8eZzFNWc8Lgc4K+m9riSpHqt02LyhnCVonoHpYvAe/oSiwbGbIXy0NEfUPMal+5
         wlRaAkMjBi4NC8YaQfSZ6IP8c/KcEVVSBOJQtEZrHvF6yrx84e2ZQeCCx4h/tHPEIPJa
         oYJR/5ZR+3AXbcm81JUEgcqZ8j9xIgYZuo8HLd0ArzXynzqSefwtFsIwBLfEc4zTD2MI
         NtY9hkYpsBj21UMHCk50tKhndbl6Ugtvp0hxEP45+R5tAPkA3PIDeCO3ijAaIWcSIGzs
         LBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=XwmNJXsce0biO7XLe+zGaIsjtrmRfK/vTz0mYn6nQBU=;
        b=Ca3E6thvcXAAgCfDJMRjaF+rRePaoG3IM49TTL6aXnLnmkoK8YAGM9zViwkErXcLEM
         FwqmI8GUvOOJBvKgOziQ3sVSjHDEbE3QWxTg0pTesRlOrEYTLqkxcJ4vpYhoH5RR6Ith
         hxJk8Y90FxoJk9zM0tFRNtCWeu+6jiUTmk7QubhQJiUSMB84M46ViYuf5Ucluw+NM1sO
         j6pSYTvdozZR4vVE8UgHcTS7PToMuWax7Xs2PZ20XR1bE8/pCc722sDiZAF1OlNrergy
         mE47bVKlbU5T0G8jcjTD8Lde0ZKWMwdwhHoxywoT3G2XIQbrPiLQyxUAos4rNyj/dTOJ
         qv5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bR7yH4+1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id q15si722157pfs.1.2020.12.11.06.29.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 06:29:45 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BBEK3q4153543;
	Fri, 11 Dec 2020 14:29:21 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 3581mratkd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 11 Dec 2020 14:29:21 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BBEPIII069767;
	Fri, 11 Dec 2020 14:29:20 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 358kstfcjw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Dec 2020 14:29:20 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0BBETD7i006093;
	Fri, 11 Dec 2020 14:29:13 GMT
Received: from [10.39.222.144] (/10.39.222.144)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 11 Dec 2020 06:29:13 -0800
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
To: Thomas Gleixner <tglx@linutronix.de>,
        =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?=
 <jgross@suse.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
        Stefano Stabellini <sstabellini@kernel.org>,
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
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
 <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
 <871rfwiknd.fsf@nanos.tec.linutronix.de>
From: boris.ostrovsky@oracle.com
Organization: Oracle Corporation
Message-ID: <9806692f-24a3-4b6f-ae55-86bd66481271@oracle.com>
Date: Fri, 11 Dec 2020 09:29:09 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <871rfwiknd.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012110094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9831 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012110093
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=bR7yH4+1;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
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


On 12/11/20 7:37 AM, Thomas Gleixner wrote:
> On Fri, Dec 11 2020 at 13:10, J=C3=BCrgen Gro=C3=9F wrote:
>> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>>> All event channel setups bind the interrupt on CPU0 or the target CPU =
for
>>>> percpu interrupts and overwrite the affinity mask with the correspondi=
ng
>>>> cpumask. That does not make sense.
>>>>
>>>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>>>> single target CPU out of the affinity mask and the actual target is st=
ored
>>>> in the effective CPU mask, so destroying the user chosen affinity mask
>>>> which might contain more than one CPU is wrong.
>>>>
>>>> Change the implementation so that the channel is bound to CPU0 at the =
XEN
>>>> level and leave the affinity mask alone. At startup of the interrupt
>>>> affinity will be assigned out of the affinity mask and the XEN binding=
 will
>>>> be updated.
>>>
>>> If that's the case then I wonder whether we need this call at all and i=
nstead bind at startup time.
>> After some discussion with Thomas on IRC and xen-devel archaeology the
>> result is: this will be needed especially for systems running on a
>> single vcpu (e.g. small guests), as the .irq_set_affinity() callback
>> won't be called in this case when starting the irq.


On UP are we not then going to end up with an empty affinity mask? Or are w=
e guaranteed to have it set to 1 by interrupt generic code?


This is actually why I brought this up in the first place --- a potential m=
ismatch between the affinity mask and Xen-specific data (e.g. info->cpu and=
 then protocol-specific data in event channel code). Even if they are re-sy=
nchronized later, at startup time (for SMP).


I don't see anything that would cause a problem right now but I worry that =
this inconsistency may come up at some point.


-boris


> That's right, but not limited to ARM. The same problem exists on x86 UP.
> So yes, the call makes sense, but the changelog is not really useful.
> Let me add a comment to this.
>
> Thanks,
>
>         tglx
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/9806692f-24a3-4b6f-ae55-86bd66481271%40oracle.com.
