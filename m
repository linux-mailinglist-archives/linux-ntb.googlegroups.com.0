Return-Path: <linux-ntb+bncBDG4LI57R4KBBAO67GKAMGQENZS4BEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21E53F17B
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Jun 2022 23:17:55 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id n12-20020a92260c000000b002d3c9fc68d6sf12420699ile.19
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Jun 2022 14:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654550273; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCRu17biyl+s/4QYxhMd1QmU9hP64vTKmxrthNlayRhFGo0N67+UgUvuNepNwofRuJ
         xWAG4Y1e5TEzrp5Sds32hS1W3zruXf64qbm6TLoaL0fg6ofufqsUfsMCKTa6mOtMeRy2
         JoVPM9F1fDrqRB0bVp/BFkbtsmd3iz8/pWsU80AVBffSu685HOPLRg6oEx2ydkSMLPg1
         w60dd01i67NqeFjF2H22GtXvm1UJ8hQRzbJ6QSi3oXLOxZaUaRZ9qYBU8IsS1U6Af/Wd
         JpwCZ8ppjRUBrdIARCJLVsHLv1YP6EPFXBiBZ6P7LGvlsPwlC168EeMcEhfedSoB23Mu
         C/qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=k3bXZbZRu+yaCXCVgJjpk13E15owZ+ClAw3hkWPbuAU=;
        b=D8Ld1LnvNtC+q70YfP0NBsluefDB85E3d7w1ediN2CErQyOuol6u177O0FUlJ8zuEi
         7YTuwFtEwxcRUGw919ZD93kjjMUqiv/KYdmATKN3Jl9ejR1hcTpefzs7QFatq6SJxwzo
         o6ilg+UeW6rYoYeujQYOML+fhrCHyBdJeQ5H/Q0nb9mpK8cjnCapk7tWcOKbaHLFxvy9
         N4LzjlK4hVlavkV6zJK2flWwBi7Fcr0Gbh9jBJqsGKB9PKyh/YKpR9h/jbjQO0GDLn0k
         hl99GbZbVYthvF96cdHCWZiPbKBpzMFpToo9YRNhjbj/TuHfMv7KS+XLILZaneucCgGo
         KJVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=R76LBytE;
       spf=pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3bXZbZRu+yaCXCVgJjpk13E15owZ+ClAw3hkWPbuAU=;
        b=GGSf8oZVC/19jCtD+cz/7qfA3Khy4OwcYz2jYTUDgXKhn+fkGBrHk3H3EBHlPwBhQS
         OPT3K/cKoHXC1O3de+ahXsS2fh6DhazilQnx3vFmWZid1RqJPS8Df9Jq/eHXOvB6oq9c
         ZSw2sg1QK9lU8Kwy4ebkwVmSg25wTOqa56CMTmhNOZBhDQ/lxNRIJ53bpAcO0aNNLLbF
         Mn8IbIXjTzE81Ar90XA2Iel71bW5Zpz/YXerXjNjihw97yP5OvoWalGRYVx5l8NFiv1h
         dlXJFdQe/IlBJInakQmRa2jFPNNPyuRca/M4n2F2XOG/hoZ97btsOhj6GwLutkeLlfO0
         jcew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3bXZbZRu+yaCXCVgJjpk13E15owZ+ClAw3hkWPbuAU=;
        b=PHDvQhUZd6CJboH6jC2+KOl/Z++obzABsM+fEPEwHrjPKS0wTOmNo2Uix2p8uyn0WF
         Er4DJMjQCvAQippoP/ureQ5Bv2Vt409pdrajwZzKT6B+sD1kKypUKIebij+Hom8HYpQ9
         RWSZnd729WDxE/AILFP2oBcPYtiy3g4amlUTm3ZKId+hf5tLvLoq+L3OYSmG1FWFZKfR
         PaAL82eST+1vbxCXFVefGA6NnpbrLiEMgPI1xCpnVcELaSPUt0QX8Fvo6V+g2Mpd05ZT
         IfR4nKf3tOdAuxdLFdM7lC/5Bm1JuX/gEV1SFb5iBHtF2QULKBuiWBdItcSv/Jpvk2Kt
         iyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k3bXZbZRu+yaCXCVgJjpk13E15owZ+ClAw3hkWPbuAU=;
        b=dT4D5tBF+Uz46gjkHyZzPgXWYWanQVCXzFL4R6zRyTv6VpPCu6zQ0uNrxy8nvEdcvZ
         hnwuk1vf6WFeVJTqlzqMlP/N8vpx8n14CW1BqzlVuTO0b5DohuCnetlHjH9m6s1sObSg
         zMy48VYT4Fc9DVBRQyLIJqBHvJww2qwphrv4DakuFgDyviJ/nzme/k7LjpBVQuTfaKew
         76elWHYboi9I7g009ncpOQpYmNgwrLelTpKHxHGu8RHAqsRWJSTClvkSSfmRmNTrjCT7
         bDB0WSbRLRNUSIvk84Pt7NDaC87ssHOosY835uS+JgUuAbzyePsvRs9CX3RXK3dcfkJT
         NvcA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53249gf0J2zGsBLA1g+BLaTqcK73JRqh6Qf1LxI79ZFiTS1b5JEy
	bc4VO+kqOFrx6Udu1GXiOC4=
X-Google-Smtp-Source: ABdhPJzRaN8h8EB2FERBnTC92mjEwULEMcuHhpwEC1QOHJ/W3uQtkU0EnHv1UITWeAOdPeWqR7f3QQ==
X-Received: by 2002:a02:85e8:0:b0:331:c16a:55d3 with SMTP id d95-20020a0285e8000000b00331c16a55d3mr1934470jai.167.1654550273754;
        Mon, 06 Jun 2022 14:17:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:329b:b0:330:eb95:f830 with SMTP id
 f27-20020a056638329b00b00330eb95f830ls511547jav.9.gmail; Mon, 06 Jun 2022
 14:17:53 -0700 (PDT)
X-Received: by 2002:a02:95cc:0:b0:331:a991:e0e6 with SMTP id b70-20020a0295cc000000b00331a991e0e6mr4608264jai.57.1654550273275;
        Mon, 06 Jun 2022 14:17:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654550273; cv=none;
        d=google.com; s=arc-20160816;
        b=BGC1rBZeqH7E8cgA2/o0GyN0QVJprBGlUCrDe5DUdX/qD98/qvMi4AN2xwIFVsISYv
         25LN/BDpnjb/iviZ2fHvX/821K4s5ORnF03p2G7zWGLRj8eJuwh8/0amkd/MsFBL5LUw
         DkW9Mbz635Naq3Witw7VRI3H/h9Zfawob1d1MgwpjTnY5yNMq6dhIoIdnY0W2BoQZvyw
         3YsqwG9YqrGLW+bAGNAwEHPO16EChNxJchTReJZtqX2gdShytuz78bVhk5BBruvfy9oH
         NVcxxu4Dib0nJfNBhovVs9KQ4F7fWWxTxDXMyOQFC85L2Z+9VLfGLvzGGXVX3QdG/ueK
         ovSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=7sv6igSkDHYVITP4qkakhuGtsHZlMRzyt6NLBRGt/9g=;
        b=Il0vvpoqs3+4z0tjW4rEGeUn1Q0n6fbOAObxrT0i8y1MDWgWZ70F6nftEr5Tbtg9Wr
         +9iEkxMUNnLa5CgBD671NcPljbD1skEoSyR6cFupIYttIbC0L23RvjW7C3LJL/Tqdf3e
         ivhOm/iqDH8SzkWlszOdjUYO42qnshvjDkGMe2iD/dCow6RgNcwaEwJGmR/Ks1XK5ZQf
         JXOT9EE161iTO9BTDIrpBtPTy6YN5veBGpjy6WT603hlLQs1F1azOM770QtKJHJfZyc3
         qcV+nXkO0aWbwEdu4yxU96skc8kkdPSOFOZ4URBoas4NhIWRXt/8zDOU3cygAVeXf4yE
         QNVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=R76LBytE;
       spf=pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id d32-20020a026060000000b0032b22cd5f74si597508jaf.0.2022.06.06.14.17.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 14:17:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id g201so64146ybf.12
        for <linux-ntb@googlegroups.com>; Mon, 06 Jun 2022 14:17:53 -0700 (PDT)
X-Received: by 2002:a25:69c4:0:b0:65c:ed2b:9106 with SMTP id
 e187-20020a2569c4000000b0065ced2b9106mr26781540ybc.394.1654550272834; Mon, 06
 Jun 2022 14:17:52 -0700 (PDT)
MIME-Version: 1.0
Reply-To: elizabethmark12022@gmail.com
From: Elizabeth Mark <elizabethmark12022@gmail.com>
Date: Tue, 7 Jun 2022 05:17:42 +0800
Message-ID: <CADtbehQe2sBKXTrf+jOpZxbCwntuOOPtAUTPEN0X5Ch2PVgXUg@mail.gmail.com>
Subject: =?UTF-8?B?0JfQtNGA0LDQstC10LnRgtC1?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000004680c105e0ce0134"
X-Original-Sender: elizabethmark12022@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=R76LBytE;       spf=pass
 (google.com: domain of elizabethm356876@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000004680c105e0ce0134
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

INCX0LTRgNCw0LLQtdC50YLQtQ0KICDQnNC+0LvRjywg0YHQutGK0L/QuCwg0LzQvtC20LXRgtC1
INC70Lgg0LTQsCDQvNC4INC60LDQttC10YLQtSDQv9GA0LjRh9C40L3QsNGC0LAsINC/0L7RgNCw
0LTQuCDQutC+0Y/RgtC+INC90LUg0YHRgtC1DQrQvtGC0LPQvtCy0L7RgNC40LvQuCDQvdCwINGB
0YrQvtCx0YnQtdC90LjQtdGC0L4g0LzQuA0KICDQktCw0YjQuNGP0YIg0YHQtdGA0LbQsNC90YIg
0JXQu9C40LfQsNCx0LXRgtCwINCc0LDRgNC6DQpIZWxsbw0KIFBsZWFzZSBkZWFyIGNhbiB5b3Ug
bGV0IG1lIGtub3cgdGhlIHJlYXNvbiB3aHkgeW91IGhhdmUgbm90IHJlcGx5IG15DQptZXNzYWdl
DQogWW91ciBzZXJnZWFudCBFbGlzYWJldHRhIE1hcmsNCg0KLS0gCllvdSByZWNlaXZlZCB0aGlz
IG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMg
ImxpbnV4LW50YiIgZ3JvdXAuClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3Rv
cCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtbnRiK3Vu
c3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRo
ZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LW50Yi9D
QUR0YmVoUWUyc0JLWFRyZiUyQmpPcFp4YkN3bnR1T09QdEFVVFBFTjBYNUNoMlBWZ1hVZyU0MG1h
aWwuZ21haWwuY29tLgo=
--0000000000004680c105e0ce0134
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+wqDQl9C00YDQsNCy0LXQudGC0LU8YnI+wqAg0JzQvtC70Y8sINGB0LrR
itC/0LgsINC80L7QttC10YLQtSDQu9C4INC00LAg0LzQuCDQutCw0LbQtdGC0LUg0L/RgNC40YfQ
uNC90LDRgtCwLCDQv9C+0YDQsNC00Lgg0LrQvtGP0YLQviDQvdC1INGB0YLQtSDQvtGC0LPQvtCy
0L7RgNC40LvQuCDQvdCwINGB0YrQvtCx0YnQtdC90LjQtdGC0L4g0LzQuDxicj7CoCDQktCw0YjQ
uNGP0YIg0YHQtdGA0LbQsNC90YIg0JXQu9C40LfQsNCx0LXRgtCwINCc0LDRgNC6PGJyPkhlbGxv
PGJyPsKgUGxlYXNlIGRlYXIgY2FuIHlvdSBsZXQgbWUga25vdyB0aGUgcmVhc29uIHdoeSB5b3Ug
aGF2ZSBub3QgcmVwbHkgbXkgbWVzc2FnZTxicj7CoFlvdXIgc2VyZ2VhbnQgRWxpc2FiZXR0YSBN
YXJrwqDCoDxicj48L2Rpdj4NCg0KPHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlz
IG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMg
JnF1b3Q7bGludXgtbnRiJnF1b3Q7IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRo
aXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWls
IHRvIDxhIGhyZWY9Im1haWx0bzpsaW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNv
bSI+bGludXgtbnRiK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgpUbyB2
aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3Jv
dXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1udGIvQ0FEdGJlaFFlMnNCS1hUcmYlMkJqT3Ba
eGJDd250dU9PUHRBVVRQRU4wWDVDaDJQVmdYVWclNDBtYWlsLmdtYWlsLmNvbT91dG1fbWVkaXVt
PWVtYWlsJnV0bV9zb3VyY2U9Zm9vdGVyIj5odHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNn
aWQvbGludXgtbnRiL0NBRHRiZWhRZTJzQktYVHJmJTJCak9wWnhiQ3dudHVPT1B0QVVUUEVOMFg1
Q2gyUFZnWFVnJTQwbWFpbC5nbWFpbC5jb208L2E+LjxiciAvPgo=
--0000000000004680c105e0ce0134--
