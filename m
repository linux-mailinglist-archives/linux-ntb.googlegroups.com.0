Return-Path: <linux-ntb+bncBCZ3V5MFGUINLH6R6QCRUBARCR4AK@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCEE1A65B6
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Apr 2020 13:41:12 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id p13sf7940093pgk.18
        for <lists+linux-ntb@lfdr.de>; Mon, 13 Apr 2020 04:41:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586778070; cv=pass;
        d=google.com; s=arc-20160816;
        b=sU8kG/HkmabUTEMSNJwClQVoslc1PNR9/zmspd3P41jxQLQbmzzJ1I96M1tvq0dxks
         SvOrE72jdPuudmvdjJJknq23gKiKFhLtfB0HacxZr7mvGBHr/4rArQBvAXoHErRHIDme
         9PbK5lXO6pPKrCQNj6jkjTYR/g1VinwQwRKae5GveqXoQyNMWbk3URwWcCNxC79QYPh3
         Wyv8I15+ulk58Fwa00pWUfoefCNecD+GS1h4A2PFukW3VCp6yzu7P1fRjOL9sGIDTFRu
         iNST8errUU0Vd2S/+qCvOY19FD62ncSyuZGcMVSMK/O8UpEIVTTOK5tBp8bl5FmLSPvf
         pkPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :subject:message-id:date:from:reply-to:mime-version:sender
         :dkim-signature:dkim-signature;
        bh=P2W3zc4wCPEPO64peydE1H2VoAKz3w6ZaIlQfG0+wNA=;
        b=plfgb08eQD7uZibG8ZRGrsKrA9vsknvpSIe1tTmt1FqChOHWiycyj1YQRsHvx6Vz1Y
         0S09RIeiqna33e3Oxv81JBgGbDAQVtNoPrSWYff2SycacdELsSscJaebrBYujkXxJW29
         npLqvdVdqdZuGjDDXcxdCLgBqzpEQQ1GcgOHDdljQcCJSWopV0rYqIA9X8HdpP6hcDsZ
         5AWCzHO6ox/OyFTIAPvPLle4X1IgLqNyxr3U6q0S6RMYFFS6Y16DwouXIvZ0dfShJJ+M
         NNOjjQehao6Ha7D3NTSC6srT0qKtntmG9SLstysP1h6cuKB+auhm56E6xn/gWOHYilvN
         8DQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxOaFJZl;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P2W3zc4wCPEPO64peydE1H2VoAKz3w6ZaIlQfG0+wNA=;
        b=Dx579i1kdVQs7ejKjtifG5LraBr3jVKV3gaWrYcVILCTFOtVc6cwzN41G8DvYcmUvM
         Xgyva7zALmUiEuT9UfUepXWKJyPU4zZSbnJgQm+890iJ/yNgd7osg4t4d073hEsWDiYC
         BueYrkiNwRP7bFemM56OGNtT97dYwRtciLkiz8xLra0o/IDjHAKWEH9zqnFTigrFmCRw
         zhgIiuquLidL/tbuREPgG00IEDD4yqXmNy/nDAvLBFQJt6y+Mh5XDyTiaN2TJ/aJ5e2V
         u53EoxHicL0PIaXR5Em/BO+OKrKea0t4JfyLgyoczbrVZNRd9BlOfuw3uRIBZP9ROsCh
         NWsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P2W3zc4wCPEPO64peydE1H2VoAKz3w6ZaIlQfG0+wNA=;
        b=P+PqziOkH9OwllfA/Yfzb6v9juviMhjH+igJraz1N6QfyuZ8/FZ07vh+aQjVIC4yKx
         hJWRUjM8ENOGLXvamACFnGq3zFe8nrrjIzXWhtbkyBHnAIhLTPjBWM0G3+qDaq5ClNXr
         PYCzJtEezI0g4tMQQQFYGm1WLDgDOoTqtEEsRH367PYm3mlI6ThtQpvCrZjvUcJKPrOK
         H9pQ+JS7s2LrqBVYvUcQ2eZnVwlm3ErHzPzC01APeQAJHa5g0f0rQ0j6/TJZ/8hET4Ks
         JUzgfKFZeOZHzUs74XpQiDmzShHc0ufG4WE7cHvq0fk0RbwzaUscfgQ/TJazLJH5PkKH
         YaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P2W3zc4wCPEPO64peydE1H2VoAKz3w6ZaIlQfG0+wNA=;
        b=tQ8ViFK7tyL7v6+2ceZw8DRZbvxr9DYjRlmsYTQDCamAs0F1h5vuVsgSXycjIb6odO
         Q6NrJsSleg3zjDifQ/6YKuxArmJ5vvfmvI30N/MLvevb5jcaHirDWEA9FbAaMNuXVwya
         ZYdEhr6yqA+XtoIppQ/qpmV8rhE6qperqx6wdTd+2TFEwkHCiCNOebHBSVVezgdqhf+P
         ODauHzocxP4faDPvRV9lL1jD0wuP7lWs5ULk8h8pIjtZPo2vG6JKM9T/C+3Evna5urkH
         06EZTP2lOeO6jPWphC67oRXFxHeMoFOA1VAcdmpXnfnGYZov23VvrWS7yZ+VLXxqfGkp
         XWbg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZ+gm/TTkhLuO7Ma2wOMBd38m3msSDB0KDQbb7TPpYsLvtoDyGu
	5+UsRcf8+6Kz/A29gcPqFX4=
X-Google-Smtp-Source: APiQypJ2E3D+6beUyf+NBMOHzybMZgRdnVd0AeJU8uZUUYn5DyeyiWyWHYOHKj3MlgIxHlBX4r2rZQ==
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr18340016pfr.287.1586778069972;
        Mon, 13 Apr 2020 04:41:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:f196:: with SMTP id bv22ls10351877pjb.1.gmail; Mon,
 13 Apr 2020 04:41:09 -0700 (PDT)
X-Received: by 2002:a17:90a:210b:: with SMTP id a11mr9369648pje.31.1586778069479;
        Mon, 13 Apr 2020 04:41:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586778069; cv=none;
        d=google.com; s=arc-20160816;
        b=qYglm6ZRgSIk+OJ1/zL7NwGgtHSbs/WQEpnKKRVzv6AeQG7ltSED5FtGJe4f5OESxY
         KHAggy/Stg3jy8iC4WyOxaw29Hy3lYbHcgQOyeA43u2W0endNDwEPr0jhdTm5pNjjS8X
         pZD+miO7kTPIN1U8CyrWZfctE3n8tNC7R4SFVNGZ0Ljd3LqwHE5RfM/x2qjsGbPmarP6
         1hWlU/3id/8D2UhKn/G34pi3Zw3eMxvwfFyE7U2ITjnZW1N2qtetBDoAwXxM8V9PHIbL
         15HaKt/ICbE9Mj0XahvrEtIZsWhwz2HfMbTGCXUlQ0lWu+VlpsH1iPAa6nEa2bZaMdul
         NtWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:dkim-signature;
        bh=qlKWExEze9qCqlwbpw1q4+d2Zjr4ETGVa64TcX+dTlk=;
        b=cadeHQO3lU8OcUANWn3BTgroCmbvyDZh2ZcboPrFccZSIWOgnMaDHv1TuOu1bR3Dyz
         S0CNLNgJANOSDiOpBay0OYbDEyt09qIhzgIeRzj70NVum2UTlRHg+3f2T6lFaD9TMjg2
         l57f+KllCFmzHb70AnFVa0PgqN/8s0qrhH/mv5snodRK784I+JQTaYyg9QbTz5T2J/zz
         6YeMscxcVl4M7RbQiMDlfufGHI0iXd9AD7jyWiggzY6l0q8BJK8aRDIbXDteOVVurOjt
         PeVKA16qd22ph0o4DgIugM3eK03dabwu2Kb/Cz38qb/88i+PqGbsjGFMU2uJmZw4+POW
         H/dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxOaFJZl;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id br20si69641pjb.0.2020.04.13.04.41.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 04:41:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id z12so8183886ilb.10
        for <linux-ntb@googlegroups.com>; Mon, 13 Apr 2020 04:41:09 -0700 (PDT)
X-Received: by 2002:a05:6e02:c8f:: with SMTP id b15mr14965961ile.35.1586778068198;
 Mon, 13 Apr 2020 04:41:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5e49:0:0:0:0:0 with HTTP; Mon, 13 Apr 2020 04:41:07
 -0700 (PDT)
Reply-To: mgbenin903@gmail.com
From: Barrister Robert Richter UN-Attorney at Law Court-Benin <info.zennitbankplcnigerian@gmail.com>
Date: Mon, 13 Apr 2020 13:41:07 +0200
Message-ID: <CABHzvrm3rWryg1yAooKeHwdxzrKD47PRAEfC+ay1A6i5z3Wdiw@mail.gmail.com>
Subject: I have already sent you first payment US$5000.00 this morning through
 MONEY Gram service.it is available to pick up in address now.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: info.zennitbankplcnigerian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HxOaFJZl;       spf=pass
 (google.com: domain of info.zennitbankplcnigerian@gmail.com designates
 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
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

ATTN DEAR BENEFICIARY.

GOOD NEWS.

I have already sent you first payment US$5000.00 this morning through
MONEY Gram service.it is available to pick up in address now.

So we advise you to Contact This Money Gram office to pick up your
transfer $US5000.00 today.


Note that your compensation payment funds is total amount $US2.800,000
Million Dollars.We have instructed the Money Gram Agent,Mr. James
Gadner to keep sending the transfer to you daily, but the maximum
amount you will be receiving everyday is US$5000.00. Contact Agent now
to pick up your first payment $US5000.00 immediately.

Contact Person, Mr. James Gadner, Dir. Money Gram Benin.
Email: mgbenin903@gmail.com
Telephone Numbers: +229 62819378/ +229 98477762

HERE IS YOUR PAYMENT DETAILS FOR THE FIRST =C2=A3US5000.00 SENT TODAY.

Track View Website link:
https://secure.moneygram.com/track
Sender=E2=80=99s First name: David
Sender=E2=80=99s Last Name: Joiner
Money Transfer Control Number (MTCN) (REFERENCE)# 26046856

Contact the Mmoney Gram Urgent and reconfirm your address to the
office before, they will allow you to pick up the transfer today.

HERE IS WHAT REQUIRED OF YOU.

YOUR FULL NAME---------
ADDRESS--------------
COUNTRY-----------------------------
TELEPHONE NUMBERS-----------------

Note, I paid the transfer fee for you, but only you are required to
send to the office is $75 only,Been Your Payment File activation fee,
Send once you contact the office,before you can able to pick up your
transfer today.

Let me know once you pick up first payment today.

Barrister Robert Richter UN-Attorney at Law Court-Benin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CABHzvrm3rWryg1yAooKeHwdxzrKD47PRAEfC%2Bay1A6i5z3Wdiw%40mail.gmai=
l.com.
