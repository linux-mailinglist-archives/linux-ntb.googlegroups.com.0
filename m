Return-Path: <linux-ntb+bncBCXLBLOA7IGBB35O23YAKGQE3JSNQEY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F5133D90
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:48:48 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id u12sf1151209wrt.15
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:48:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578473328; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kl/IQmmbQFEVVlMDof+zQnjlJYMBU/KMnenyZqsUYDhsTXh9r0cvr1/59YNSUQor8I
         A5bOMijtGuoiO68ry+Rfw2O0KQMnRupBncdCkPk+HOifB/GT1Q7PYg6atwRGHKzohnqH
         aIs4dNsfnWnAueeqYUf4yJHdCK/WNXqROjmsUZVlHuXmtSSmX7pEAPObjf5Sz4LRobzm
         n3e2RHHpldG8OQIy76wBEURj4dj4UgxkffOp3GB9EcO9dxpVL0eX8Z7CMI3Kgl/zk078
         2ee2l6uZO/eSyiTKAm3Na99Mx6KsT5UAoy7KJB+Vgp1I4V07phmzTNicyBG0V/DtbtLY
         ePqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=fA6wtJUGorN9vHMkWuTR+4sIBpY8uilA0cA6GpebS80=;
        b=MquNAXfu+EygHu2P/5HmFHua0yGLiGEIrCx0huNAeEm/5vnN3CayKEcb9dlRN4t8Ki
         qhOmuUyXli0qfD1QusLB7U1FDg8sREFpdjOjAAtuz6ZuhPdL87vW9hPfk5I/hwL/kELO
         CN3HUQNTQrhOzY9aBxIhaIxMqgoU7FDMibHBsd8QM832aY8NVbtFnrnmaIYzSSAsEYHx
         +tagtr2TWjKU1BOk25TOad6+JCv9TYRoAtSPlwe8UE9mtPfS6G5cCgPbC++IUWcKmUjv
         8I6prVL9ELjDHOvm2XqTUl/tKMDlFHCIFhHzuCGA/Vt03/sL2TOCDSXi7cOeSgvlY/OE
         aCgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=Cd0z8iC9;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fA6wtJUGorN9vHMkWuTR+4sIBpY8uilA0cA6GpebS80=;
        b=AqE75QhHmyum4ydodJugo2eI21bDcJ7ZSdzt2hniHwNYWV1l3eoRFNgvM+KMJsOy/L
         H52tDXn6694hvwyq0saG1/UZ+RPyGMtnucp9D0b67pAfJ3l/OYJKbEd4QCSdSdauodhY
         f0CUApwxAhfyjoZcz7tA5V3EXyb/oSeDqqrtKM6CH29p2pKcO0/nUN9bE4C90J/+RCxY
         wKGh6N13n2kNFMShyeiAmIy7hSFlJTyER6IeOM95+CcUIiAm4cWwMfSGbp+Q53anAMRR
         XOpE8DpIL/H1D7P18Y5B0psiYABhvrO0sBSTGHFpuakkBUriAxEYCw2PVWka+0L3KyZh
         Vawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fA6wtJUGorN9vHMkWuTR+4sIBpY8uilA0cA6GpebS80=;
        b=mvZyAVNMW2BHgjehmKEOIawaGCHaZv0RbCbWhkzeAbPwsJR9Hj1qyTtjmvMn9a3OPQ
         Tx01PChXUt1UK37e1T8gv3MhZVC5niFn8LfAdW19plwpdA1dl1Kprk346xImhh6DDzLe
         Dg2wiPbZkT1RUqNfs2DVc9dhAmsUG78arRr6SE6SQwo7RH1hMVvPQZVfmf8XWLpUzYRR
         NoUqyVt5tQVU+RfhOJf1TJY+4SyXWC5Hj9dntuuBoS6mfAh3T1Oc+yOS+nL2E7KJr9MB
         qaJeE8wmBTpvcyKizLDqw7tmO49HgrIVqPtUE3ZnPRDnrlPtiOvXXtClGztwUuHkuecr
         Vsaw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVci8OhTZbKHr0VjYZyCs6Lt2limc/D3tK1SVt1zFTf69012g5F
	YkFOGt4y8jj35h1lj256qQU=
X-Google-Smtp-Source: APXvYqw6vjWCKvQ+1CjNsfWsVMtBjEKRIUrG/z9D+DhSfnRLfktewSbdn2jYm4a/6sq/vLOxRSdnUg==
X-Received: by 2002:adf:b605:: with SMTP id f5mr3019369wre.383.1578473327867;
        Wed, 08 Jan 2020 00:48:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fdc5:: with SMTP id i5ls532590wrs.9.gmail; Wed, 08 Jan
 2020 00:48:47 -0800 (PST)
X-Received: by 2002:adf:dc86:: with SMTP id r6mr3433151wrj.68.1578473327379;
        Wed, 08 Jan 2020 00:48:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578473327; cv=none;
        d=google.com; s=arc-20160816;
        b=kkOppf9cU2O+Nc23zkgj45RiHJ/TXyIa6Kyc1H2EPWL7zojTcws9ji+M2ttTyo+aOd
         Z14Yl93nJkuL0VVmyZEYfbl3JKJXrRjxIsRagdJN7zBmJgQwbkp2RB+nVx+W9HRLJLnp
         vjtWC+/ZUXbJZI8+WqHnQV8teaqj/LEaYOzltR1m8bHB2WYWHUh+Whl5IsrymCVvulec
         1FEc2qDrmwWt+fh+EqOJRnUqdkauZx/yrJ52in90shg96RPZmM3aulDjHNNKHvHmFWnh
         aBKOcUogCwQ1jd6/4K11P8vrJHU9vVXh4XYdgPRL3XYFBbv9O6YIxWPEm2XV8AvEcaj+
         erwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kWCAIl6qlr/NQhjX84pOmCSHzIhFMSBDwvFc83ztIuI=;
        b=nDMPaYO0aHRCfenjsZeIJ2wqhjDUatsVd5CPga3J9lb9wMGH79lAZHMs4RhavsTH4y
         iMPoidNaRXJuGpl8Jx1m0MXf8yvlyLbJ9t5rUyFHoSva0UhDO3KAwp04FfzDbfTJ2dDL
         ConxoVTyUlRxHMoLEXSW242ETPLByoIqVwJrhIIAlf+YWUQ7VXlg2MNrGjZABhM8x8pt
         zyDnkp6m5zUVIb4N6JdVQlan0NtbZHWD+9zjAj35lWLA/4XqqiHx6SjMxVYwMPS5yrR7
         ndvTEMrkVRR8yXdqPa9+1HbcJVJMHq8okny+U7Lu+HoVs9fi02j7imUBXJRPI5yKQZjD
         9Kjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=Cd0z8iC9;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id w11si73570wmk.0.2020.01.08.00.48.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:48:47 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 47t2wF6zpLz9v3Hd;
	Wed,  8 Jan 2020 09:48:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id eHCnKMUwPC8j; Wed,  8 Jan 2020 09:48:45 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 47t2wF5Z8xz9v3Hc;
	Wed,  8 Jan 2020 09:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id BCA2B8B7ED;
	Wed,  8 Jan 2020 09:48:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id Z-k90vSTB5Ao; Wed,  8 Jan 2020 09:48:46 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2CC498B7EA;
	Wed,  8 Jan 2020 09:48:46 +0100 (CET)
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rich Felker <dalias@libc.org>,
 Jiri Slaby <jirislaby@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 netdev <netdev@vger.kernel.org>, Paul Mackerras <paulus@samba.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Dave Jiang <dave.jiang@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Helge Deller <deller@gmx.de>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Alexey Brodkin <abrodkin@synopsys.com>, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 Matt Turner <mattst88@gmail.com>, arcml
 <linux-snps-arc@lists.infradead.org>, Nick Kossifidis <mickflemm@gmail.com>,
 Allen Hubbe <allenbh@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 alpha <linux-alpha@vger.kernel.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Kalle Valo
 <kvalo@codeaurora.org>, Richard Henderson <rth@twiddle.net>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
 <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
 <CAMuHMdV=-m-eN4rOa=XQhk2oBDZZwgXXMU6RMVQRVsc6ALyeoA@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <00a43e5c-0708-d49a-9cc4-eb2ce8b4cf99@c-s.fr>
Date: Wed, 8 Jan 2020 09:48:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV=-m-eN4rOa=XQhk2oBDZZwgXXMU6RMVQRVsc6ALyeoA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=Cd0z8iC9;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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

Hi Geert,

Le 08/01/2020 =C3=A0 09:43, Geert Uytterhoeven a =C3=A9crit=C2=A0:
> Hi Christophe,
>=20
> On Wed, Jan 8, 2020 at 9:35 AM Christophe Leroy <christophe.leroy@c-s.fr>=
 wrote:
>> Le 08/01/2020 =C3=A0 09:18, Krzysztof Kozlowski a =C3=A9crit :
>>> On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org> =
wrote:
>>>> On Wed, Jan 8, 2020 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.or=
g> wrote:
>>>>> On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> =
wrote:
>>>>>> The ioread8/16/32() and others have inconsistent interface among the
>>>>>> architectures: some taking address as const, some not.
>>>>>>
>>>>>> It seems there is nothing really stopping all of them to take
>>>>>> pointer to const.
>>>>>
>>>>> Shouldn't all of them take const volatile __iomem pointers?
>>>>> It seems the "volatile" is missing from all but the implementations i=
n
>>>>> include/asm-generic/io.h.
>>>>
>>>> As my "volatile" comment applies to iowrite*(), too, probably that sho=
uld be
>>>> done in a separate patch.
>>>>
>>>> Hence with patches 1-5 squashed, and for patches 11-13:
>>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>
>>> I'll add to this one also changes to ioreadX_rep() and add another
>>> patch for volatile for reads and writes. I guess your review will be
>>> appreciated once more because of ioreadX_rep()
>>
>> volatile should really only be used where deemed necessary:
>>
>> https://www.kernel.org/doc/html/latest/process/volatile-considered-harmf=
ul.html
>>
>> It is said: " ...  accessor functions might use volatile on
>> architectures where direct I/O memory access does work. Essentially,
>> each accessor call becomes a little critical section on its own and
>> ensures that the access happens as expected by the programmer."
>=20
> That is exactly the use case here: all above are accessor functions.
>=20
> Why would ioreadX() not need volatile, while readY() does?
>=20

My point was: it might be necessary for some arches and not for others.

And as pointed by Arnd, the volatile is really only necessary for the=20
dereference itself, should the arch use dereferencing.

So I guess the best would be to go in the other direction: remove=20
volatile keyword wherever possible instead of adding it where it is not=20
needed.

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/00a43e5c-0708-d49a-9cc4-eb2ce8b4cf99%40c-s.fr.
