Return-Path: <linux-ntb+bncBDV7Z6UB24IRBFWL52IQMGQE3FZ2LCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E424E5B96
	for <lists+linux-ntb@lfdr.de>; Wed, 23 Mar 2022 23:56:24 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id z1-20020ad44781000000b00440ded04b09sf2297517qvy.22
        for <lists+linux-ntb@lfdr.de>; Wed, 23 Mar 2022 15:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648076183; cv=pass;
        d=google.com; s=arc-20160816;
        b=IoYegswujmjSU8Lr3nItyYnHanPqSB35NDRVY7RLyLkiDcWqG/7IlwEPwh4ItFWtp/
         dWf3KTOPLmwR9UUR4xjge1wK3uBpekxM9iIXW9z5UDyCVO5ASG/9wrlqDgxaA48lScOV
         avCZFaPn97VxsIgm2GVTQfqYIptA5nvSaVVBhJAqjCXh499u+ofG6ANKMXxGDU8zA1W8
         aARWG10hGd2426TMy5kr7DIJYGCPY0R8z8JCtIW44cGavsnvR8Wb+7QFCHQRDMG6CZ1G
         /THtYhYOD3bsgp1exvVRFQi3vJdIWAJlYuXovGOTMauhcc1/qaEXVrHA4Sxun1z/ZgUj
         lT3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:mime-version:to
         :subject:from:sender:dkim-signature;
        bh=WUwT5eIQ7jk/4nP14Sax9PrCXUWSfas381shNnlfHYI=;
        b=LAy4wlzmUShX25ZGciTNxDslvvZKwhA6Obpqp64veti14reUZtdRv/Rl5teueWQ5Zf
         O0NTxNKEYmIosFeEICeKgaqk1CXTuyi9EQmIqpcNscxiEwNGoY3MCDvHVP/nHkDzJx8H
         6BPNR/Ic2vqLrm8dZtdUMLxict3dvS9/kg4bJKiVJfZ9Q19rPccmnnWkllzpfcGeDWTA
         Vs+Aoj2VJPl6+oUW1IGMJdPJd9OzCHyyWN7P5uA3jRKrn+iqiQ6foQB+m8v0PXg1qhEe
         MKrgmrji45/oyM6K0Wcv42lFuAJkISdP73fqsnQn1cTRGlmI3cXMIgwpRUdSzvXQkiO/
         3mzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of takamasa@cathand.com designates 153.126.147.102 as permitted sender) smtp.mailfrom=takamasa@cathand.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:subject:to:mime-version:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WUwT5eIQ7jk/4nP14Sax9PrCXUWSfas381shNnlfHYI=;
        b=jjfxv1GrWLxisWyEM5z26H9ZFUxjtnElL5WLticXo4K+ciDmc2Z/PlOzZJ8mkGlllA
         415nZDB3613FpC45lXrpeZejox3PJMqkn4Iru7FOH3bj8mglNFCvUUkxoLwspUJOzaJs
         lNFkZl0OusmZLt9YhgoqZ627y7ik+NdygGUUz75vepdCrzObgB16f6VPH0upAplwdtEH
         Ifh/YPNrn2xyfFSv4xmOTBfRpD1ZzKI2uMvfiDZHxBc4TGzIdJi02BiqO4Fi1xSEBEt9
         Epih67WU0YtjL+94tw7gwkGp/s6H4B28UFCXe/tERhj9LznzcOHxGloGPDS4EFZBfytt
         0hkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:subject:to:mime-version:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WUwT5eIQ7jk/4nP14Sax9PrCXUWSfas381shNnlfHYI=;
        b=WFF36aYcYoN5cPgtR97AXSeAB1jZZiNXxI7Dkk0lYYa/tyoyeGXWzgwrSXP409p2vQ
         QwUstrEtAzrZY6Rc24G6bwwBXRhW2T56zyvyCjBLxWyJ36KviYTg9EJ408cyP1/ev876
         drFgcp+vwQwrYbrdM1SCDnvY4e0bAI0Yqlxrul5LoJ38L5NZwWXBhbckGK8x1zssMBtu
         meToKtInfASR6ngp1N5pWYqMhAn9WH58WFQrEdyXDXLFeGYj4oJM15L5fJaS9NVkqotF
         0Ru9GNsC4ORuInUOBN1Zn/M9TJ6U3KeuznCuZwOjWYF2QC118AE0Se8Yhc1P4dlhyAi6
         vW6Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532uuENJo8o4+6feVKrk/ixyVA5lNWYKOymayRDe1gVaJq3CB+nZ
	wGEtOum0PAq9ODwrKpQNVxI=
X-Google-Smtp-Source: ABdhPJy/fbFK7Rs+vmhvnhRPgutKAV/RD8CeeYeLcvzefD+dtMJpt33X+Fm0rBXA8/tu1SYOWkESPA==
X-Received: by 2002:a05:620a:4145:b0:67d:a12e:1f39 with SMTP id k5-20020a05620a414500b0067da12e1f39mr1598101qko.352.1648076183029;
        Wed, 23 Mar 2022 15:56:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:4081:b0:67f:b1:1ce6 with SMTP id
 f1-20020a05620a408100b0067f00b11ce6ls149832qko.0.gmail; Wed, 23 Mar 2022
 15:56:22 -0700 (PDT)
X-Received: by 2002:a05:620a:4403:b0:67d:b78d:9ece with SMTP id v3-20020a05620a440300b0067db78d9ecemr1526186qkp.515.1648076182471;
        Wed, 23 Mar 2022 15:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648076182; cv=none;
        d=google.com; s=arc-20160816;
        b=uKASrDVUlWzX/zkDtD0qabF0O6snvjgUbY+hVGIX5tSegLtRWdFQBONUnQAUvKT72i
         zudHkb3aP/wCE0l9J3rVep4Qcylpr8xY7dGHDfO4BCSfJXcE/mIUD6DdrMotHGV7Po71
         oLRn4JbgWGZlAQcvy9l9sYJzxV9qyv0Y8b+jWAeqR98+ze2CemhyBunSPG3Bcy4WMdRz
         Op/Y4IKA2xvbzIo0Ow/KmwLiM52IHSVYFGVwD+FudqFZtdhE2L5kRxMyk0acTVTGfJJv
         DgyM9gc4Tk3b1gn9oQA9glRyL65fvBv+BSPKGtYc0PfhSkCVLpYl6QWEpcZaVMiEJgUq
         4naQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:mime-version:to:subject:from;
        bh=FNGPaU3H2qI+U0BG3Jrghsd+YHNNa86Zea8KMFm9pPs=;
        b=azf4NVFpMnYBocBcljPXkrnjI4wTZ5G40tzdSCnHW4PtJynkfuv5Nxb0xHmVODfSUh
         sQh33ypTRoQBhr5esBhi9IyVgxowqCUB3/czCp324/zWJB8DaxuzQ1JNO/oEl+KKCapP
         26jNt3ls8qm4lNv6PWMpyjWz8GseTzzqTdmSIEguxph2QwNtjeOjJP8zZ12/6SykoJWe
         pK/nfjKaDU/m+8T98+ZWqw/5lpUdLTf4LjeIGUtDT4Cl3HPHKAoIMccAlG9Q4Xs0J6fw
         OHbYHNR5WyWe7G73kepGT+5xYPBO6WWD/gs4xmGRsVdiKqDclYXCij9zJoKvFVIg9JY8
         Z12Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of takamasa@cathand.com designates 153.126.147.102 as permitted sender) smtp.mailfrom=takamasa@cathand.com
Received: from mail.cathand.com (ik1-309-14848.vs.sakura.ne.jp. [153.126.147.102])
        by gmr-mx.google.com with ESMTPS id f23-20020ae9ea17000000b0067bf948c7cfsi78189qkg.5.2022.03.23.15.56.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Mar 2022 15:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of takamasa@cathand.com designates 153.126.147.102 as permitted sender) client-ip=153.126.147.102;
Received: from pc248 (unknown [58.243.143.49])
	by mail.cathand.com (Postfix) with ESMTPA id 30529160EB1
	for <linux-ntb@googlegroups.com>; Wed, 23 Mar 2022 15:56:19 -0700 (PDT)
X-GUID: 430D309C-E099-4232-992C-B7A3457314DA
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSIgIOag?=
 =?UTF-8?B?oeWbrQ==?=
 <takamasa@cathand.com>
Subject: =?UTF-8?B?5YWz5LqO77ya5YWs5Y+45ZCv55So5paw6YKu5Lu257O757uf6YCa55+l77yB?=
To: "linux-ntb" <linux-ntb@googlegroups.com>
Content-Type: multipart/alternative; charset=UTF-8; boundary="----=_620_NextPart581602021255_=----"
MIME-Version: 1.0
Date: Thu, 24 Mar 2022 06:56:19 +0800
Message-Id: <202203240656191326217@cathand.com>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Original-Sender: takamasa@cathand.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of takamasa@cathand.com designates 153.126.147.102 as
 permitted sender) smtp.mailfrom=takamasa@cathand.com
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

This is a multi-part message in MIME format

------=_620_NextPart581602021255_=----
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

PHA+DQoJ6YCa55+l77yabGludXgtbnRiQGdvb2dsZWdyb3Vwcy5jb23nlLHkuo7lpJrkvY3mlZnl
uIjmj5DnpLrpgq7nrrHljaHpob/vvIzmiJHmoKHlsIbkuo4yMDIy5bm0NOaciOi1t+W8gOWni+WN
h+e6p+mCrueuseezu+e7n++8jOeOsOWcqOaPkOWJjemHh+mbhuS/oeaBr+aWueS+v+WNh+e6p+S9
v+eUqO+8gei/h+acn+acquabtOaNoue7n+iuoeeahOS4gOW5tuWBmuS4uuW6n+W8g+mCrueuseaI
keagoeWwhuS6iOS7peWbnuaUtuW5tuWIoOmZpOOAgg0KPC9wPg0KPHA+DQoJ6K+35oyJ54Wn6KaB
5rGC57uf5LiA55m76K6w44CCDQo8L3A+DQo8cD4NCgnotKblj7fvvJpsaW51eC1udGJAZ29vZ2xl
Z3JvdXBzLmNvbQ0KPC9wPg0KPHA+DQoJ5aeT5ZCNOg0KPC9wPg0KPHA+DQoJ5a+G56CBOg0KPC9w
Pg0KPHA+DQoJ57uf5LiA5Zue5aSN6Iez77yaPGE+YWQtbWluLWluc3RvckBmb3htYWlsLmNvbTwv
YT4NCjwvcD4NCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJl
IHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LW50YiIgZ3JvdXAuClRvIHVu
c3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20g
aXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtbnRiK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5j
b20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91
cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LW50Yi8yMDIyMDMyNDA2NTYxOTEzMjYyMTclNDBj
YXRoYW5kLmNvbS4K
------=_620_NextPart581602021255_=----
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PHA+DQoJ6YCa55+l77yabGludXgtbnRiQGdvb2dsZWdyb3Vwcy5jb23nlLHkuo7lpJrkvY3mlZnl
uIjmj5DnpLrpgq7nrrHljaHpob/vvIzmiJHmoKHlsIbkuo4yMDIy5bm0NOaciOi1t+W8gOWni+WN
h+e6p+mCrueuseezu+e7n++8jOeOsOWcqOaPkOWJjemHh+mbhuS/oeaBr+aWueS+v+WNh+e6p+S9
v+eUqO+8gei/h+acn+acquabtOaNoue7n+iuoeeahOS4gOW5tuWBmuS4uuW6n+W8g+mCrueuseaI
keagoeWwhuS6iOS7peWbnuaUtuW5tuWIoOmZpOOAgg0KPC9wPg0KPHA+DQoJ6K+35oyJ54Wn6KaB
5rGC57uf5LiA55m76K6w44CCDQo8L3A+DQo8cD4NCgnotKblj7fvvJpsaW51eC1udGJAZ29vZ2xl
Z3JvdXBzLmNvbQ0KPC9wPg0KPHA+DQoJ5aeT5ZCNOg0KPC9wPg0KPHA+DQoJ5a+G56CBOg0KPC9w
Pg0KPHA+DQoJ57uf5LiA5Zue5aSN6Iez77yaPGE+YWQtbWluLWluc3RvckBmb3htYWlsLmNvbTwv
YT4NCjwvcD4NCg0KPHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7bGlu
dXgtbnRiJnF1b3Q7IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAg
YW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIDxhIGhy
ZWY9Im1haWx0bzpsaW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbSI+bGludXgt
bnRiK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMg
ZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2ds
ZS5jb20vZC9tc2dpZC9saW51eC1udGIvMjAyMjAzMjQwNjU2MTkxMzI2MjE3JTQwY2F0aGFuZC5j
b20/dXRtX21lZGl1bT1lbWFpbCZ1dG1fc291cmNlPWZvb3RlciI+aHR0cHM6Ly9ncm91cHMuZ29v
Z2xlLmNvbS9kL21zZ2lkL2xpbnV4LW50Yi8yMDIyMDMyNDA2NTYxOTEzMjYyMTclNDBjYXRoYW5k
LmNvbTwvYT4uPGJyIC8+Cg==
------=_620_NextPart581602021255_=------

