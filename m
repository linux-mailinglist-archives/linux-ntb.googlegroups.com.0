Return-Path: <linux-ntb+bncBDXYVT6AR4MRBTUBSXXQKGQE5BEASNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6441A10ED80
	for <lists+linux-ntb@lfdr.de>; Mon,  2 Dec 2019 17:50:24 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 2sf198940pfx.11
        for <lists+linux-ntb@lfdr.de>; Mon, 02 Dec 2019 08:50:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575305423; cv=pass;
        d=google.com; s=arc-20160816;
        b=aX8GkixHevoQnHl0b4d/r9I20sazq3AS3fMSgrEju0yp+vzm+XAzGxkJHvekRYYktM
         pgf8oP/mwtpkYY/znwxAhq9sMq5LBFMZ8r5sX+XJYXLYpWO9lzHIQAx4mvJcD2bGC5As
         HpWrtPjiPW8MMs5HfNp21Eqc0JtPYMdG449l4e8CWiv+0P0dAgzfNCaf9c4mIE6fwke3
         +TdQjojmb5h6dqRVE9pPAVi3ayxY+nZ/vTqYbfxzQIs9Dt2PEvG5mkvulplK5Fr1qznE
         j+nvDuLGoXX7WR3R7FM3H0TD4EY77trrnOayxylKbAcJZ4kboBAxQ3Y1qTcVhPG4A9XC
         YJhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=qZnlp8z48Kh/4xY/l3qHisspe/p7nHw/YYvTj0x5YiU=;
        b=mbWIKMqhYMBUWjv5kA+JGSjpgXqL9btXYYD9PHNfBsJpkbB9aY7IRyb8+ZsHPU685W
         06NAtvOKYavrXT8bxQniBDbCzo8ErZW8AfXIrVQinycTFR/CjU2cyay3LYlnkefcbjXK
         elRv4iZEd6N9fpLM4MlL6fVlWLWf68EtZVAClcEuxQnPD7X6Acdr9idJV2/QFSi/YUUK
         ou2uCh1cDdz3K+hJLCtPIfj9iIzpntzodAxWVkCl1n2ePhuiR51o9UFuIs49O75PXa69
         3ZtuNtJPUh3LpyKzqBuxImqipD7hFmNsNdZtiYnZo2m2K9KjLNz8gPjWXxhv/XmWY5cr
         grNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qZnlp8z48Kh/4xY/l3qHisspe/p7nHw/YYvTj0x5YiU=;
        b=ZO65asB6PhGLR9WSwcjUC3CXwgpqfpZsvgQAhd7byYbI7+KPmADluxeloTUe0rrYY2
         +6M/I87z+yx8WK0PEOuHD0N9gfTDo7eBZrJrPC+6MFa7LdCmYzjOqQOY7PdwEh+zWKhc
         3laLqdsYhv+AUW55M8GgBFHt8pu6RKeRgKV9lAgOuxi5gpfw/7161isMQWrKaYY21Qs5
         0NJHE+4NrMr/UQfUEmMJ/YNdrdqW9EQHThcNXK1R9l63BsdLXX7I7IGpioESRE2682Wx
         7ypJI1u2RqANH3gXdGLUPxjEqoQNRnFai/aetnoYF4v5wNMkPNIE4To0z7fRjrB279s9
         n2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qZnlp8z48Kh/4xY/l3qHisspe/p7nHw/YYvTj0x5YiU=;
        b=NM2uW8q8W7HhiA0P5TtxUvht2DQ9X+qNALWuN+zt1Cd+zQ0Bd309DaPvRt4phXTabu
         wyDgoGc8XFZKe7bj2QqnKJWCxro8UpWNfKX3NWUnnkIUErxLOinoowA2GzHGfnG2ICdM
         ZuPyoC9TZsHbwweereugSjuGfYl8Itrroza1LfY8zZ/RLfqA3kVsJlY1gDzMV6MVYg63
         InE7q0AYJ2NSpPKp4iQKpHDKG5WsKTM8Nl0erVeyqB94jO5eO8hM9Uljyiwpi0B64hTy
         NIeFMAU3Z4qOSQE62k/t+fJm1TCrpX5zB/MV3JYiyO5O6xwDrgO7mmA9Jt0yh7VXFWL0
         3SKA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXq5EshQP+eluBk8zFUpM13HBrXEd7mrv8L13kTSXIlVvQ3Jhbp
	Ot4LhGnpGXwRaOEYpxSHfEE=
X-Google-Smtp-Source: APXvYqyeM4FdwWg4w7yCWsNT74Dn80ZH8WlWOKZnqpD1eTQehM6YJXg0SNXTwurdyXlIMz828ROIqA==
X-Received: by 2002:a63:1b5c:: with SMTP id b28mr32294400pgm.69.1575305422691;
        Mon, 02 Dec 2019 08:50:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a70b:: with SMTP id w11ls71514plq.3.gmail; Mon, 02
 Dec 2019 08:50:22 -0800 (PST)
X-Received: by 2002:a17:90b:d89:: with SMTP id bg9mr170890pjb.75.1575305422308;
        Mon, 02 Dec 2019 08:50:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575305422; cv=none;
        d=google.com; s=arc-20160816;
        b=ylWOKO8HL4VqEDkJ3fgdRyZwLbOBUkO8Jj7eO3mqqcYx2ee1PJEi7NO6s3N2WvBLX9
         WIbBemxIPYE198S5UllVD5/+0ENmbnYojqvnD9EqLL6+ReNkZBsmGfZjnnnqBoc8Qy22
         Z5OEOUxjvDkzfuIkAspZejLeM5teit/lBIX3o0Cg6vuOfgTCRZT3lhx2+Yx8T3u0cZbR
         LI1291C6DcDsZiTfmQbmotW2kzhOSMe4DsaW5CtYh05cEUP7PrZo9GiltPFhhgmikymA
         3dguGqI4TVqkNkscD3L4CHZOPNUFN8u6HdAam9jh0YrdCidCzWVwCk69MdM15cSlf4zP
         fEpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=NOUjUauZJAiEVTD6fCq1QWC+PfwdrxZPLI1zgA+UKEo=;
        b=CQuVYc7vEDoQ3Kx9ICKWvbAXW9yVZBqEc74NSnIlkiDlARiVbFo2jznaG5/F95pBNE
         tHZF3/2bAxwjvneLAsYKeQrL9PdeE64JE2h8SrIf4zHMD29CvZG+/IEW4WgeQfwCHniK
         YNG6BrfK2CJmW7eABe9mnctdwtt+R1/yEjSCymUkXIF0NfSDJiFsiEp8NWVXQzw1LEwJ
         ByrUiv6Z1+JpYqQgLOfU2aKd/loCN/tBVvNKpVtzAfMOWGh7g2tk8f7xJakDvomQEZ7O
         ukuS6+ptvxBWdgj+n0NMuGwnIMNxt7hoxr1khLwunwpqm0E9hvptm/x4bIogl7RIwgsO
         DrcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id t34si11563pjb.3.2019.12.02.08.50.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Dec 2019 08:50:22 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 08:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="208186048"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga007.fm.intel.com with ESMTP; 02 Dec 2019 08:50:09 -0800
Subject: Re: Physical continues memory for NTB
To: lravich@gmail.com, linux-ntb <linux-ntb@googlegroups.com>
References: <e71c7a5d-ad80-46c4-b76c-7a6fba4fe666@googlegroups.com>
From: Dave Jiang <dave.jiang@intel.com>
Message-ID: <35f6d119-f98d-3b4c-e005-da92f83e9f75@intel.com>
Date: Mon, 2 Dec 2019 09:50:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <e71c7a5d-ad80-46c4-b76c-7a6fba4fe666@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 12/2/19 8:23 AM, lravich@gmail.com wrote:
> Hi guys ,
>=20
> I would like to get your opinion regarding NTB memory windows usage in a=
=20
> production ,
> most of my experience is on Intel Skylake NTB which is limited to 2 NTB=
=20
> memory windows and has hard restrictions
>=20
> the naive way to use NTB is to set translate windows to all the physical=
=20
> memory rage, this way entire physical memory will be exposed to peer=20
> node , call me a paranoid but I not feeling this is the way to go ,
> the other way is to expose only relevant part of memory=C2=A0 but such me=
mory=20
> should be physical continues memory=C2=A0 (trying to avoid going to IOMMU=
=20
> direction) to get such physical continues memory I cant use
> kmalloc=C2=A0 or other slob friends because they are limited in max size =
and=20
> anyway the chance to get such a big chunk after init is low, so the only=
=20
> way I see is to reserve the memory on kernel init ,
>=20
> currently known to me technics to go this way:
> 1) "out of kernel memory" (memmap boot parameter) , this is the easiest=
=20
> way to go but we getting out of kernel memory , which has its=20
> disadvantages ex: there is many flows in kernel based on pining memory=20
> with get_user_pages which will fail with=C2=A0 "out of kernel memory"

I wonder if you can try it with memmap=3DNN!MM and map them as DAX device=
=20
memory and manage it through that. It might work? Worth a try.

> 2)=C2=A0 CMA -=C2=A0 this feature support only generic memory region allo=
cation=20
> with boot parameters=C2=A0 which will be shared by all dma allocs in kern=
el=20
> (at least for Intel) , anyway looks like overkill for my simple=20
> requirements.
>=20
> love to hear your opinion guys ,
>=20
> Thanks
> Leonid
>=20
> --=20
> You received this message because you are subscribed to the Google=20
> Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to linux-ntb+unsubscribe@googlegroups.com=20
> <mailto:linux-ntb+unsubscribe@googlegroups.com>.
> To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/linux-ntb/e71c7a5d-ad80-46c4-b76c-7a6fb=
a4fe666%40googlegroups.com=20
> <https://groups.google.com/d/msgid/linux-ntb/e71c7a5d-ad80-46c4-b76c-7a6f=
ba4fe666%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/35f6d119-f98d-3b4c-e005-da92f83e9f75%40intel.com.
