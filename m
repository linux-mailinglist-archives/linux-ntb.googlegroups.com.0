Return-Path: <linux-ntb+bncBCS4BDN7YUCRBSFOUL7QKGQE554HT4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F0C2E317C
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 15:16:41 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id l2sf6066376pgi.5
        for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 06:16:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609078600; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qomwn176VkOxFHqvuyNTDHLEejeoVS0nWivOf2dv+SzdrMeNMeB//a1kcoqnITiyNE
         U+xVlU6z7DGRujf7rVIrhiIXiKEsmJz8INfZN4Q4tp/AM68TLCYHmu/2QoW1jAZK/9qQ
         PJ17oQh4MzkSzVIHEv+lJWgCBZpKcxV/tn1cbIIZCwPf1ybNwAk9hKRQyAvpErxgumX+
         XJUw8cAQ0Wjj0VcCi0OzfP4cBv3VE0TW3mF1WqKoFrbbOWgJFs1fVv5Ic6Z557qKezrr
         j8QXdz3NZ2rd8KJ10zW/AfTBU105pQ9EwVTOZVAJX6iN1FA8C1P0OFVLXUQuc24MDqWo
         poCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=xcmW3qNJlOUn9MKBwire1qAP1W8BIJnPG32ak+6TbYg=;
        b=WFngzv3gbuQ40Rx0i8Cn8dyXRuxgSFQAaQotLCRGF0HDM2IzvO4fkd4Jg4MeBoT3FL
         0VuT8b1IfL0AJWvjWIaLN9Hla/5DMzzulfJOw3dlOETlvRxQVvEP7yFjh1JR3rDEjx2I
         StdsVRcmbR+LczbjzLhvuDNTx571tabHTGZivklySo/fjBKSfj5HFxvXaqR8egNQgzKj
         FMVKU8qVJn47YTArJmcvsh0w3OPn9+PCkLxMXrnJNQGkAStp75Qwyd/726trI2ZUZLv8
         9RoBFic1S1y0PuJy/KnNuO/Vuen8pSVrO2JZSYJqXbY3sNDjNm+25HY7nG5N02nnbJ5w
         eMww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=xchUb5W3;
       spf=neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcmW3qNJlOUn9MKBwire1qAP1W8BIJnPG32ak+6TbYg=;
        b=I9nifny6g3xEVWOcsE181HNBboNCfMpOv8Zg19qLYiBmfo8FitfSl0Glwbi/sO61ZO
         zrOwzmQ12kkEgPtQrvauSWU8RED/YyGktDkKoteCzV5bddwgy06X/DNLUDpPdP6rlUNy
         WRDu2aZIdouBgdf53OGF7scFezeWvj/P14eMsgBj/Kw/3a+3qw/AC0b3+vf2qpnOKsl0
         55uXWfl7R70x8BoUvYzaBE74AFJsfG31jyWvMSjSGR2BlmfSz5lhklzNsGsDJwqWrqox
         f/SA89+NpOGNt8lg4850/RAKeR2tFLOQrBzuAr4LugRyndoBaS6iFzr4OH+xAFFMrus0
         VeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcmW3qNJlOUn9MKBwire1qAP1W8BIJnPG32ak+6TbYg=;
        b=Br7AmBlgB6R5ArHGbSd01K5U+BOJCRgidLSCn/sF8cT02KPVH+OzwENdQ0IT7TWxn/
         +IaVgaTJ5rOiekeS1Ilk+seIFVvaHUogowUVSdJTZNAF1KhiN8wU0eqM0f3OElcGYuLv
         m3QonYX5x6OJwyOQmqogwjELiKYDek//vfRljVWE2YTgmXWvXY0hDZvSMJpX12PC1V8T
         bUaqtgzJkH2KkpKn4oAzQu03qnQEyibM5aYfLm0yjiBkGaSW+q73rr4Ek1tDwdH2wQ83
         9FQmv26W0/ZWxbuY6wzp9Xmge8FKefMASe0rYs6sz7X3IggteOLV2wxACQ8cR6WkUJOo
         5OdA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ZVI4PUE4JyXgTxrkfE6cdSogEjU2q0jz9vI1Kq3DVcp/FQrr0
	uQ2sx/Q4dY3jKFtGWVavKEE=
X-Google-Smtp-Source: ABdhPJzrRI+I+WMpUwTDSteq/uLCFXmSKOQPD3uJM/Xc6fOCkadkUw6C16X9HvDqp00Uy2yz0vbj3w==
X-Received: by 2002:a62:3503:0:b029:1aa:6f15:b9fe with SMTP id c3-20020a6235030000b02901aa6f15b9femr37448050pfa.65.1609078600651;
        Sun, 27 Dec 2020 06:16:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls26493360pll.0.gmail; Sun, 27
 Dec 2020 06:16:40 -0800 (PST)
X-Received: by 2002:a17:902:6f01:b029:dc:3182:ce69 with SMTP id w1-20020a1709026f01b02900dc3182ce69mr17552183plk.10.1609078599903;
        Sun, 27 Dec 2020 06:16:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609078599; cv=none;
        d=google.com; s=arc-20160816;
        b=UStjjVzT/DXvAWeloHPIdweIUFuolJQOozGh2BQ6zZ8EQCG8USnj0+jtAPTNtmELp0
         P9AURpMYv/CMF9iaXOr5iaL7/ppV4JT5lAGhJkqKVhhN+2sWYLQxfkT1Adg1YI5QBB+F
         4boQxBTiIaz3tZK7BT6oAUXod4jTCGke8K1Hd1Yziog83h60S4r2IA+B97zohOUn/Izu
         CvTKOSU15DW5PYyc6dVfCcAT0jIhka9ZYc8AGSge4R0g83juOh9S/zvhmih5vS0P9p0o
         LnNkVVYWQmYm21y74CMbfW/l4VJd8wRivcIGObOFDmN7bU1jPsNdQCr8+D0TK9uQeym/
         mcRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=0AMXmohgDXh67JQTuG0L3iD6jFpb52IIJ0q0yCMfrzM=;
        b=p4P1HaWjNceKGrFJNSdiJ39ja9aKTv2wT5RZqpFdIAGprhOSgSuT7XEegKy1RQMO8t
         57Mzcps4Tr6ZKnPBCQo1ellI0vtSMxNAK2JXyTilwa6H55djDTFvp/sifln2YOoDqu0Z
         hoG4yBfWi7oaZi2Ri0u6L/vM3V/AI+Ta7GO0GZGi8onff0Yb26sq408geJoGLSCA2nBv
         N/5p/8a1l1OO5LKYRBzO8ae2idxeeuCFVsh8Cw84tdTmHiEGCmzjflERGe/gTOMTxy+/
         aCa1DAjWVIirXKNftfc5PU/Qd83OQA7xaOvI9iirETD+ZZBQRXrMThEXava9GJE70POh
         x5+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=xchUb5W3;
       spf=neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id h11si691956pjv.3.2020.12.27.06.16.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 06:16:39 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::72d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id p14so7045654qke.6
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 06:16:39 -0800 (PST)
X-Received: by 2002:a37:a495:: with SMTP id n143mr41220702qke.362.1609078599101;
        Sun, 27 Dec 2020 06:16:39 -0800 (PST)
Received: from localhost ([2605:a601:a606:1b00:b541:53e0:ad17:6f6])
        by smtp.gmail.com with ESMTPSA id a194sm21323259qkc.70.2020.12.27.06.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Dec 2020 06:16:38 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 27 Dec 2020 09:16:38 -0500
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for v5.11
Message-ID: <20201227141638.GA11393@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=xchUb5W3;       spf=neutral (google.com: 2607:f8b0:4864:20::72d is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

Hello Linus,
Here are a few NTB bug fixes for v5.11.  Please consider pulling them.

Thanks,
Jon

The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:

  Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.11

for you to fetch changes up to 75b6f6487cedd0e4c8e07d68b68b8f85cd352bfe:

  ntb: intel: add Intel NTB LTR vendor support for gen4 NTB (2020-12-06 18:18:03 -0500)

----------------------------------------------------------------
Big fix for IDT NTB and Intel NTB LTR management support

----------------------------------------------------------------
Dave Jiang (1):
      ntb: intel: add Intel NTB LTR vendor support for gen4 NTB

Wang Qing (1):
      ntb: idt: fix error check in ntb_hw_idt.c

 drivers/ntb/hw/idt/ntb_hw_idt.c    |  4 ++--
 drivers/ntb/hw/intel/ntb_hw_gen1.h |  1 +
 drivers/ntb/hw/intel/ntb_hw_gen4.c | 27 ++++++++++++++++++++++++++-
 drivers/ntb/hw/intel/ntb_hw_gen4.h | 15 +++++++++++++++
 4 files changed, 44 insertions(+), 3 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201227141638.GA11393%40athena.kudzu.us.
