Return-Path: <linux-ntb+bncBDEKVJM7XAHRBRFHW75QKGQEJ3PZZIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFDF2785B6
	for <lists+linux-ntb@lfdr.de>; Fri, 25 Sep 2020 13:25:57 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id p20sf721277wmg.0
        for <lists+linux-ntb@lfdr.de>; Fri, 25 Sep 2020 04:25:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601033157; cv=pass;
        d=google.com; s=arc-20160816;
        b=pcAsp6eXpDfx+M7jxfKzpp2T+cm+znZL0g2t2l2lW4wGyt/SksgqDeAnDMMDYbb2ur
         oQ77JFPV9LXy68NDwkjQx6VARbmY7gcZl5L7OHIc0av5SUfA03Io2wtlJ5mK9i8WyIuv
         NKTABmO2AwpdrbyH3nnOTwWEINs24MEJc1YTvjXM3ddNGInnRFnErmKqCX0qzOnlxbVM
         02oK4cbN5L4RJ3C2d0w7zCxdABjqABiKxhE3J6Lobx96xM84kqQubDV+4YQ6RsAsXPoJ
         1hhpohbSFEduXiBO6bLS8kdK1rttLMp64mmZhq4iYBitszGRGih6Jao46nt7zdfhI04u
         JqsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=F+RFAERJAzdLzlPTYdBBjw0fTvN4W1Ip6UaX0OFZL/A=;
        b=SXZ5i+sH8Ye8emO2J9d0N3nFe2nBfH2jmFwPoAyHnbpAxeg4pjSDazO7/5UijWQI79
         hPsR4wPAJtZCda6MqMzb4oj8hyUItl6hN8YgiMfkwAdmcKRfPWcUcvqaExgxfbfNui5Q
         8zfOS1y7Pwm6bUQ4o+k0qrfHUe+3E7y948A7yHssZHhLY2YFMwtqyUiQ3O/Y3VZ0WdpC
         J2xh8FNl6BxWlC9emA3GYTpKpbLC8rGIWV736ugBiRJyEMCys9nQawdKwi38721tGd2L
         cCfMOLYZ/y9oagc9SiHQ7P0x8il6RTbwj74/o4b57C3koT887624NaoXxiiLw6LU4s0x
         XeSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F+RFAERJAzdLzlPTYdBBjw0fTvN4W1Ip6UaX0OFZL/A=;
        b=aOF4BS5MV/pwKHEMLTBxZl+wHXfjYsrMP2VVVkgLUms3fp32HFDWJVlhN7PbwzTpo9
         PAzOQHBmg/3NzQL6Mh9gYQVCkkTqyaVChDq07MDqeatEMa3++ii0xNJHpVII2+MWRasQ
         MFnl92klVYekpG5sSitCXtSgfLmfwwRqabt4wphbLHESIqnLrnkgI4fTE1fCe+DgrOmt
         dwb3zysvGkdAK0EkYecf4SyzagakQn9gd2JVfNyA81we2lmtSOXZEapPzX+od2o+2JXp
         7P7p04o2ocEx5s0eC9tuPBV70GX3XVeJuFYQ9mD+09K3zfa+MnCKuC/gEojecSG0uxF2
         jkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F+RFAERJAzdLzlPTYdBBjw0fTvN4W1Ip6UaX0OFZL/A=;
        b=omL9Xt3Q/Z6FJz/NXqLPAHuwkGosZV7zqYtr1yKu3VacsgEPv/hKzrTUjzo5je9AGG
         gRv3UVM0fxvcd51rMFWLo7tPxzQvcEldxWocFg0txkrnFA+t3Q3Ct5NDXzx7NAXoITlS
         Ik8/adnVViOJ88E/bPEWzWuPTXPaNTLtJOi7qZZOWw6CoGk14WRw295RHNZgQZjqDfNN
         MeFCMyjC3++YmK/MpFZSpmJSb0Y7U1/xj6LEn1JaRbrBxLC1dYIMDihXJL9y++5w1Ovg
         s7w12GbC753pjlrm5iTk6/JWqmqBAbKYpW9AezXey0i0cKDa77O76LN9vNu6n3tulM31
         nDxw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531tAGxRPGIAju637pjWnrD5X6mAEG7+rdZc2LRB7rCUiw6EVvpS
	EoMD4O6LF0rUsZz0BtnRvNM=
X-Google-Smtp-Source: ABdhPJzrmlI1bL5GfmV/SGNn+F39Y5Sx97onAib5bjMwoU3Kn7x7KguxKvR9UzXlUVSDUJyRlDhctg==
X-Received: by 2002:adf:f903:: with SMTP id b3mr4124077wrr.142.1601033156880;
        Fri, 25 Sep 2020 04:25:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:4154:: with SMTP id o81ls1087766wma.0.gmail; Fri, 25 Sep
 2020 04:25:56 -0700 (PDT)
X-Received: by 2002:a1c:b7d7:: with SMTP id h206mr2758914wmf.159.1601033155945;
        Fri, 25 Sep 2020 04:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601033155; cv=none;
        d=google.com; s=arc-20160816;
        b=O0K+pTsr0QlK10epV4un+wgDP83V1GHc3beXN+2tLY7UGS+BjdMXJfK75RXloUKPBG
         22V0mXTZOvQkCqefOn4Ac5XMznj9a59WzrPsP+v/VH8E3WMFoN1cetfvZ9UWA5cBcwnJ
         yrplruIm/It46E+aofM/IvnNE79KOu0A1pWPwjpb2WufVPQ7pQumWknu6IJLLLu+BsB6
         WEfhtVyK8YgdBJuFYJUhzStmCT73os6hwpFHYjIoMczimnVhfAkjebjA3mbomIihmWor
         LohBxU9cw24ddoCdosRveR9NFaQ5Jz/boUKQXgUE0U4TjOnRTdvpVJNVg8FLetdHcOPH
         2N8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ccyvXDeHFw/8uSHgrgdc1XANYsLOHXdzde9aeeOvBDI=;
        b=gXAfRUijDeiOy4OT71YXvrkEh8Chcdx54GlSJXlx6bLLNwg5i3HYs3xmY0AqPikzeR
         p7L2Gn1sweJi9YkwmkVbkaUfj1wUKx9aIUzplgvpjiDakujTwv8mzDSjRnrW/XNJn/DD
         8kHvn1x1+SjQH3IKH0vjPsJayUx0Gu1+RYSU4DKAN8N460DlFjwYlnCoNP8JlX27HUnI
         Cxk2d+K4RVzRL3RG+PxDzb5x8pPvONVpP6pZl3R65tzGo5FpN9+7SaNUGr54WAOq4K+b
         KRktekkpvaNuZMVj+dlqN6B/coWPe8AeNPaLGNBbmQJkHfO8XnOgXXI/ofv9THHsBp8W
         bUyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id w10si74950wma.1.2020.09.25.04.25.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 04:25:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuUza-1kdi7N1KAE-00rbB7 for <linux-ntb@googlegroups.com>; Fri, 25 Sep
 2020 13:25:55 +0200
Received: by mail-qk1-f169.google.com with SMTP id f142so2317791qke.13
        for <linux-ntb@googlegroups.com>; Fri, 25 Sep 2020 04:25:55 -0700 (PDT)
X-Received: by 2002:a05:620a:15a7:: with SMTP id f7mr3352274qkk.3.1601033154195;
 Fri, 25 Sep 2020 04:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200925072630.8157-1-sherry.sun@nxp.com>
In-Reply-To: <20200925072630.8157-1-sherry.sun@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 25 Sep 2020 13:25:38 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3fog3jE_cPUTELDkFKoO2FbCJufQiDZhfL2FsZ5s5q3Q@mail.gmail.com>
Message-ID: <CAK8P3a3fog3jE_cPUTELDkFKoO2FbCJufQiDZhfL2FsZ5s5q3Q@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add noncoherent platform support for vop driver
To: Sherry Sun <sherry.sun@nxp.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>, 
	gregkh <gregkh@linuxfoundation.org>, wang.yi59@zte.com.cn, huang.zijiang@zte.com.cn, 
	Rikard Falkeborn <rikard.falkeborn@gmail.com>, Lee Jones <lee.jones@linaro.org>, 
	"Michael S. Tsirkin" <mst@redhat.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>, 
	linux-pci <linux-pci@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:S+GEyC/dDkwnznmmmbMC9ANFtxC6ajG55yCvpD3Ub/YNeo9ttB8
 R2yMhhJwOX+NakiYnKQgN8e1a/isQairu0nOwre7JEDsB/yE6hC5TgYZjkh1geXHs5bcn74
 D+PqrqvQISYSvx3DgkTvGoquiZs2IJio0UEvYhOxa4da89VfO5QVwox48pArhkpvPeWf/1u
 Pjhzua4/dotLBdGYPeL4w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CFKGmzmHess=:jDS6wYU/wUO1J3tp9naWcN
 Xg8+d4V9WmXgyu5bg7eycSMFKycguFup8iJrhUVdyUCVjfTpwFAmoS2BKWA53mWfEpGyyo7t0
 QTM7ay9KpYTOecgP+cZ+qhp7+Rsri0Gacww94OV5vhfzw2HEF1iT/3YgK7fJ16UOY52UqUeFh
 P9IXE7ihSup9sH+zEoGApVS8umUXYCYhVbYvq/clkVyr3oBMyFKmblqNzpnyHHcbH/HK793xH
 L60tInJsHAlzPAzu0WYLWE/szl2qwD2Xkalxyy6R9w9cIB1Ih5aGtiNk25s36KMXNCfkHACuj
 0kgocWPqU4b8PAA7VAZmWEe1HwOv/ESWbqVQbd4kyO0tkGopd3dq9mcAGogXx6a1IiDP7c0ux
 XFaR+QNFXaM622jFFyOjMtHBrQyPCeiNnGlokk7xLR/tlPMEQAWF5qgljmhJZVZHe6IvfQUeK
 Qw0lrJhc5FZGANmBN7GKAEDqivaWYSruGBEajIPzW9CSA0T052OSLYp/98dPMfQSm1sQDasP7
 4RBRKVvlvqIGNjjoOYtJEwgoEz/LfLHVP59QHrIl7qnSHnozypn3zrxioJMgQMAW1qbDqw7bk
 JPPkgCn8FHfHiUUeade2tiODMRxsnTKp99OB06x8oVaNB5p2RGxGKxvpxU5YzAJlG/YMCCJzo
 GN4ICENbWAHiwxqsRUstZthxnVq8oqydeH/7Jpm4DjXhKyuum49NPPl53LhLY4dZG5W80i/Lp
 S2xU9kueG403D/IlUZYTxPF/t1jRSLtV85cfZUwdKhRkb38LD1+PARc0RFDfJY3BMEv9AjSrk
 Fg7xms3xAowFLHlxO+yn+22sJZlzGtd5doOAEj1yuuDvD276CC6n7EPzq8rV8+W1FgD3hjE
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Sep 25, 2020 at 9:27 AM Sherry Sun <sherry.sun@nxp.com> wrote:
>
> Change the way of allocating vring to support noncoherent platform for vop
> driver, and add some related dma changes to make sure noncoherent platform works
> well.

Could you describe why you are doing this? Are you using Intel MIC
devices on Arm hosts, or trying to reuse the code for other add-on
cards?

Note that we have a couple of frameworks in the kernel that try to
do some of the same things here, notably the NTB drivers and the
PCI endpoint support, both of which are designed to be somewhat
more generic than the MIC driver.

Have you considered using that instead?

         Arnd

> Sherry Sun (5):
>   misc: vop: change the way of allocating vring for noncoherent platform
>   misc: vop: change the way of allocating used ring
>   misc: vop: simply return the saved dma address instead of virt_to_phys
>   misc: vop: set VIRTIO_F_ACCESS_PLATFORM for nocoherent platform
>   misc: vop: mapping kernel memory to user space as noncached
>
>  drivers/misc/mic/bus/vop_bus.h    |   2 +
>  drivers/misc/mic/host/mic_boot.c  |   8 ++
>  drivers/misc/mic/vop/vop_main.c   |  51 +++++++++----
>  drivers/misc/mic/vop/vop_vringh.c | 117 ++++++++++++++++++++----------
>  4 files changed, 125 insertions(+), 53 deletions(-)
>
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a3fog3jE_cPUTELDkFKoO2FbCJufQiDZhfL2FsZ5s5q3Q%40mail.gmail.com.
