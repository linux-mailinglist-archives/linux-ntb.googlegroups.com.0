Return-Path: <linux-ntb+bncBC63BL75QIBRBHEAVLXQKGQEE3JNHWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B44211550A
	for <lists+linux-ntb@lfdr.de>; Fri,  6 Dec 2019 17:21:50 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id w127sf4240780pfb.13
        for <lists+linux-ntb@lfdr.de>; Fri, 06 Dec 2019 08:21:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575649308; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWRxrziByZ3J5yOmdftI/fb2shs8rNq669RfgiLzenJU2opuztVdnyuexjKWoxptV7
         GjH4dzFC1/f2hABXgfvdHVtMbKci7t+56/sP/G3M37GXsXO2YRerkmroQ6zpnRuddWqK
         ZMSJDuw/mL4R90NpaMgsYOeq62LL6m5y3ehOzrYA8viwy5awXz9238ZUDgrwrGT4GwRr
         8F4sjSPkgzMI73Ga+2XAAPnLzvOMsvP9z8MU8ChhUAA5sx662Odq2E7Bqropz6cdZQZa
         MiHs/EXzpPjFU2QcbUIWLYgT0p49TWuJaYXVptzh6shEus6w/mqIFOCWEutyVxnS0KvD
         YfMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Z5Iz9gcHYAb9LACmfYOjEvrdmoRxbFJ+VwTYSd68MkE=;
        b=ot1BBm9R3kQNk8CFscLKMaDtGJguALvT4L5+lZUYLZJ5RpV54fF9d/A4WCinZ1Wrrn
         bmcKUTbL/yHR9ZqqJlRSiGGZnS0/m+aRhrbXiC4qAEENHhN7gPRqruKKx+di9dQ+pAqh
         JepJzfwLWytaHQUqTzp052o9mjRG5I2syHnFO0hDGY1cuFuyDAyMJ3kpKCc5xapxrw7T
         Ad0ZkIp02tuCs+S5u58r2ctvnxwGrh0ikgW5zHP9NDDMQCIom328IIo1ijKIg6BSOdP6
         0y10K2wYbaj7rROTeD0bHAqWqHZ6nyfOjoBEuvVNYTJRxAYebfZfl2zHv/Bx6m3YEhQo
         jXgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kK9OimSa;
       spf=pass (google.com: domain of vermasachin09@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=vermasachin09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5Iz9gcHYAb9LACmfYOjEvrdmoRxbFJ+VwTYSd68MkE=;
        b=VU0vYHCS5TVuHuxyMNPWQGFajjrqE8iIzFbtutph4MijSuV3xhYMjrWrmHH6Gg+9aH
         wrnHfZx40vwn8dcBOI/9pA7NXnmY0YO8l89nUYptS4dhbzxDbRseRu3MBZW5f6sX81L3
         EXX2tpINY+bVhLm8Me+gjgOnlMDtnp9djEUUkj0Zbybn+hHWHsjskknl+yH7p8ZSUJfN
         FzJX9M9sTpgaUtVGcHuo3OS88oQa3qib/4pXBwYN4qlMMp5ZuTBmzUf4jPYFPRQc+TL1
         bK339FcTBI1c2wYAJPU40RQ6Nw2WRZq2XrbNMiq4Z6zYao3hw/htJW0wBRDOSOqS4n/5
         j0WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5Iz9gcHYAb9LACmfYOjEvrdmoRxbFJ+VwTYSd68MkE=;
        b=DJy2JfvHZHAO0319inJEYi5Sr6kytkkkyy4TRPZAxNeLOtYFCqH7eUUxBRtqjQ4uyv
         BLEsDJ1uKjtUWgGsVaL6VogGH8HJVhqQAtl1xs0EBCqr2OG0LW5JqKYJ7KosmIKRvAaI
         bjjFR6N4F923XlmaZ8nzsx3xB+w7BzGEGC8XqF6HsrbyA6IoEkHkx+agQpEa7ZcIjdy2
         5mzQ96ElSY9gXF0e5IOuU5OTeSrymklc6bYpT/plE9t5bQtRWWB7z9FqX7YF4Tkre3OW
         0VsohxfgOd3uEDtJUbKt5jQmpQrn+IMJnR+K5JNdGZX+zvUgDjBoo5CWIMLjmw4g7v0I
         oFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z5Iz9gcHYAb9LACmfYOjEvrdmoRxbFJ+VwTYSd68MkE=;
        b=p8i0GJlrgvJa3GUn9+8qK/HoAQAiN2jUvdUZUk//Bheg1kPKaHw99OoPlNYPNkq16i
         Ft8Sv2ZHXV0BOX2m8oEt3wpQHAH3jjgb5oMpsp5tIsJd7Fe1+kK0ooJaeSmusnHbgt90
         4CtxGDSPvyqVCgF5PD/vbcV5H/BPF4fPVnmKvX3LzqUDbT9sxkmgVLsqUufFcZ1IAMHQ
         rv14TKL71dLRKnrS8qKn1HUbt8pyxnccWrrHGNgNYktrx6zWIPYA7lVj4Tyax9iUngjb
         NAESnDktFtLL9cxySXzCK3ragl3Lz1wRxE3HCWxS2ZNKaHLjMs108pve61UR1JrbOTaT
         7KdA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXhPxepLsjZcXLhf+j6Srn9QX50kg7zApWpAN462dK53C/rJk7K
	ObXpqn+wli3s9yQ7vat7xuU=
X-Google-Smtp-Source: APXvYqxPLlzzr1EhHu2dZ3Af3RLD6F9iNbtZFtAEb0wHFNoY4EOqS2FkoP/6Dx8YoXx4KhvtGEf2SQ==
X-Received: by 2002:a17:90a:e64b:: with SMTP id ep11mr16930804pjb.58.1575649308585;
        Fri, 06 Dec 2019 08:21:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:aa97:: with SMTP id d23ls1804494plr.12.gmail; Fri,
 06 Dec 2019 08:21:48 -0800 (PST)
X-Received: by 2002:a17:90a:3aaf:: with SMTP id b44mr16940967pjc.9.1575649308213;
        Fri, 06 Dec 2019 08:21:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575649308; cv=none;
        d=google.com; s=arc-20160816;
        b=qliYG/2OZXOic4NM9+JrL/RvEoY1r0n6GyoyyYRKW0ggL+zamycUeEtmyNiwbYsZCU
         +uBoWwNY1BTlIPgNH3GoG2Gc1gG2rIU5pLxbTds11WxgLC3RwT6u3VhVmQXQB0cADwQ1
         eT8SOWH5wzWWr4Quh72QrCtb7rfMWabpRGCCJFuhepXojEhnH2yPXTb4sugNvCxI4Pbw
         WYNOu+WMSpfT4CgsasgkZd/Vh1az1X2m3KB9rsbnZlNqc+7UAT++05XFL3hQh/7MZsOt
         nXETZMA/M7w4apESK31Plp+3uPFSU97bEHcrqbvDvD8bA1eooXLWqIlB3rRvA+qZt++d
         MeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Ff7cEEUlORqgwaoTuF7lBsqX9NejKmYzFGOm1lP3aT0=;
        b=E10a4L1z1d2N2kqBYPqJ6qvPIdkvw2jZ//USiJOwy2CWmfmXZg06d8Znj0Vc4Di2dZ
         dsbz/0IUA9VE506YKsQbiKJY1lvuImOpPSZdU/VcqoNTA3j/CjwgqVpk7X/XomPk/qTE
         yLuflKLVs/ceLmqJwLfKbi7TIelBRmLgrLENhBNtNwGhdkPKyJJy1GGmzfYibgTY1tny
         NG+1oILkn9ypIJ4xgChHYF0U9ExYkyusvok+/T8F9T5JCXp2Sb35BX7JukcHzUaVVpEU
         0BkMpM+25aSDgCF7jiwn3wFkJtb2HbMgBTZJ0uWXZspU7GOWEor5TaDVe/rtYyrckMKJ
         40pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kK9OimSa;
       spf=pass (google.com: domain of vermasachin09@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=vermasachin09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id i131si710847pfe.3.2019.12.06.08.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 08:21:48 -0800 (PST)
Received-SPF: pass (google.com: domain of vermasachin09@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id u17so6736283ilq.5;
        Fri, 06 Dec 2019 08:21:48 -0800 (PST)
X-Received: by 2002:a92:3602:: with SMTP id d2mr14855994ila.7.1575649307325;
 Fri, 06 Dec 2019 08:21:47 -0800 (PST)
MIME-Version: 1.0
From: sachin verma <vermasachin09@gmail.com>
Date: Fri, 6 Dec 2019 21:51:36 +0530
Message-ID: <CA+YOsKJ-ejSNp8htq3+r2kmdW=9Q7UAsb0fLugyX_1VbzmaRfA@mail.gmail.com>
Subject: Flashed Kernel for Pixel2 but changes not appears
To: kasan-dev@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-ntb@googlegroups.com, android-building@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000040faea05990b71d8"
X-Original-Sender: vermasachin09@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kK9OimSa;       spf=pass
 (google.com: domain of vermasachin09@gmail.com designates 2607:f8b0:4864:20::136
 as permitted sender) smtp.mailfrom=vermasachin09@gmail.com;       dmarc=pass
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

--00000000000040faea05990b71d8
Content-Type: text/plain; charset="UTF-8"

Hi,
I have flashed android10 kernel for Pixel 2 with some changes(additional
logs) but the logs are not appearing in kmsg or dmesg, *Even I have append
the existing log(the logs which are printing on original build) but could
not get modified logs only original's one printing.* It Seems modified code
(modified logs) not flashing in the system.


*Here are the steps I am doing:*

Downloaded AOSP10 and build for aosp_walleye-userdebug
Downloaded the kernel code from *repo branch android-msm-wahoo-4.4-*
*android10-qpr1*.
Compile the kernel by *build/build.sh *from kernel root directory.
Copy the Image.lz4-dtb file generated with build/build.sh to the AOSP
kernel folder of my device i.e /device/google/wahoo-kernel, substituting
the existing one.
run m bootimage to generate boot.img
adb reboot bootloader
fastboot flashall -w to flash the build
Now I can see the kernel build which shows the latest date of kernel build
in device Settings, means kernel flash is successful. But my changes are
not appearing means modified logs are not appearing.


Here are the files I have added/modified the logs
drivers/staging/qca-wifi-host-cmn/wmi/src/wmi_unified_tlv.c
drivers/staging/qcacld-3.0/Kbuild
drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_cfg80211.c
drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_main.c
drivers/staging/qcacld-3.0/core/wma/src/wma_dev_if.c
drivers/staging/qcacld-3.0/core/wma/src/wma_mgmt.c


*One example of my changes(append msg in existing log):*
-       hdd_info("Disabling queues, adapter device mode:
%s(%d)",hdd_device_mode_to_string(adapter->device_mode),
                 adapter->device_mode);   *---->*
+       hdd_info("*Modified* ...Disabling queues, adapter device mode:
%s(%d)",hdd_device_mode_to_string(adapter->device_mode),
                 adapter->device_mode);
So I am not getting modified versions. while I have checked in kernel
source there's no other place for this log.

Please let me know if any prebuilt binary are there in kernel source for
*staging* module or If I am missing some configuration during compilation.

Thanks,
Sachin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CA%2BYOsKJ-ejSNp8htq3%2Br2kmdW%3D9Q7UAsb0fLugyX_1VbzmaRfA%40mail.gmail.com.

--00000000000040faea05990b71d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I have flashed android10 kernel for Pix=
el 2 with some changes(additional logs) but the logs are not appearing in k=
msg or dmesg, <b>Even I have append the existing log(the logs which are pri=
nting on original build) but could not get modified logs only original&#39;=
s one printing.</b> It Seems modified code (modified logs) not flashing in =
the system.</div><div><b><br></b></div><div><b><br></b></div><div><b>Here a=
re the steps I am doing:</b></div><div><b><br></b></div><div>Downloaded AOS=
P10 and build for aosp_walleye-userdebug</div><div>Downloaded the kernel co=
de from <b>repo branch android-msm-wahoo-4.4-</b><b>android10-qpr1</b>.</di=
v><div>Compile the kernel by <b>build/build.sh </b>from kernel root directo=
ry.<b><br></b></div><div>Copy the Image.lz4-dtb file generated with build/b=
uild.sh to the
AOSP kernel folder of my device i.e /device/google/wahoo-kernel, substituti=
ng the existing one.</div><div>run m bootimage to generate boot.img <br></d=
iv><div>adb reboot bootloader</div><div>fastboot flashall -w to flash the b=
uild</div><div>Now I can see the kernel build which shows the latest date o=
f kernel build in device Settings, means kernel flash is successful. But my=
 changes are not appearing means modified logs are not appearing.</div><div=
><br></div><div><br></div><div>Here are the files I have added/modified the=
 logs</div><div>	drivers/staging/qca-wifi-host-cmn/wmi/src/wmi_unified_tlv.=
c<br>	drivers/staging/qcacld-3.0/Kbuild<br>drivers/staging/qcacld-3.0/core/=
hdd/src/wlan_hdd_cfg80211.c<br>drivers/staging/qcacld-3.0/core/hdd/src/wlan=
_hdd_main.c<br>	drivers/staging/qcacld-3.0/core/wma/src/wma_dev_if.c<br>	dr=
ivers/staging/qcacld-3.0/core/wma/src/wma_mgmt.c</div><div><br></div><div><=
br></div><div><b>One example of my changes(append msg in existing log):</b>=
<br></div><div>- =C2=A0 =C2=A0 =C2=A0 hdd_info(&quot;Disabling queues, adap=
ter device mode: %s(%d)&quot;,hdd_device_mode_to_string(adapter-&gt;device_=
mode),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ada=
pter-&gt;device_mode);=C2=A0=C2=A0 <b>----&gt;</b><br>+ =C2=A0 =C2=A0 =C2=
=A0 hdd_info(&quot;<b>Modified</b> ...Disabling queues, adapter device mode=
: %s(%d)&quot;,hdd_device_mode_to_string(adapter-&gt;device_mode),<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;devi=
ce_mode);</div><div>So I am not getting modified versions. while I have che=
cked in kernel source there&#39;s no other place for this log.</div><div><b=
r></div><div>Please let me know if any prebuilt binary are there in kernel =
source for <b>staging</b> module or If I am missing some configuration duri=
ng compilation.</div><div><br></div><div>Thanks,</div><div>Sachin<br></div>=
<div> <br></div><div><br></div><br>=C2=A0<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CA%2BYOsKJ-ejSNp8htq3%2Br2kmdW%3D9Q7UAsb0fLugyX_1Vbzma=
RfA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/d/msgid/linux-ntb/CA%2BYOsKJ-ejSNp8htq3%2Br2kmdW%3D9Q7UAsb0fLug=
yX_1VbzmaRfA%40mail.gmail.com</a>.<br />

--00000000000040faea05990b71d8--
