Return-Path: <linux-ntb+bncBCHK3VHCYUIBBSOK5PYQKGQEJ7RAQXY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 947E31534A7
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:54:50 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id i8sf1774628ioi.0
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:54:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918089; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFfylZlvh6vgvSoV8OcLnGTBcAViCIhLBaBS3al17ZA4HHMYR73BOGFhfF1cy2egTH
         bGRsYI+IfYMmVA4L0ld8W1h1pMD50dugbrbc7qfB+6d5Out/JsFlSOyjsSESF8OeejV1
         nGjG9itz8xA+9MZ3Up+oApFxJ5ifRx3ZSTqKtyJRGSSzxCplUEkWJyyt6kfLF1r/GGTW
         PhkXsb98LYdj0n6p3qN+0B+DPEFinc+JITpx+kcva3+mAm27sQYn6Xk5Oifxj/TMqG42
         nM59hk6GupQjgGg2yXlUhRdUjXPU4ajr4fK5p5knvJxb1UolJaonUUbq6braGt4oXByn
         7KEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :sender:mime-version:dkim-signature;
        bh=wi4k76nwj16PFigd1SCKdURv/Kxu0inpk2gG1BudBKc=;
        b=s8ywbKxTnZaNuIYu/OEeANqlgei690lnV/+cwLchSc8VudFjFeWHa8lu3SfUQyDM58
         N4QwMcD1kA4BwMmzwGAa4BRZoJcCfjhR2I8baWbC0UTvm9Ntz9oZjEmXHxfAJ1axYcFV
         MbX+Ylvu3rnJiqoDcOpDOQvD3ki1RC1uXOMPmBa0m5HHuakN7l3hXYV7fszRk9Myt7Js
         w5ZXVGxXr2AJGgynjJkD5SPlV2+FD/uCtQ5hMU/a8lUIkwtVjIhk1gfkxV4J2l/v/3c+
         ZtwugaIKM6vd2rHThr/5crHpLhu41GeAwXeIz7m0kFkJOnjYLmxzk9SMZjWpAe8vLylK
         pooQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PAhbp4fr;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wi4k76nwj16PFigd1SCKdURv/Kxu0inpk2gG1BudBKc=;
        b=qudnzewKmsJgoZBMYKRXHEJGVGdPQl0FIgE8vihKGs6c4PekQLOlCDg5zBN0eCDIHF
         dEzpsh7DKvWbjIXj7WlUqA2HThs3wRAl0X56r6/M90yWpM8DEV8cGx/b0sIFVeuPMBSr
         bVPCNNJf2JjpKSr1LlT57JJzs9vWWzTxnwRj0jKOifLoH/dyApQkNKpMSf2Yc57+Xz6B
         u733m+m1Yd2uS0Xkqaa38yFEqZA5KIoWAQ3sPdptF7cqXyIays2DeBGi9ERfW1IxL1aJ
         DA/fLoYdUB9bxgvb5diRsboDnln47gTxNgIE6TrHvnk70DZ9vVeU3PSHurnZ+GPgYriG
         gQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wi4k76nwj16PFigd1SCKdURv/Kxu0inpk2gG1BudBKc=;
        b=WTCz9niu8pzvdKJo2yBtX2Vbh+jbP5j1tX7ZiaYyW1VGPhaFJ7Maww3IC2pP7Jz3c/
         /0vyolW9ad/5lcbiSkDM9Y8PD2seM2U8j9sAL+cU9S/y2d2QRSewWAnkKgYGkbt+PUuc
         uentuV+gWAcgTxyq4fzrkIFDtWyCSIxb0NNL6ri0QepS2/H2Hz8WKqruRtULLQBQoqY8
         hugk7CNUpdV362BPC3raE+9Lic8iAmD8A7BAQFeYmMx21WeC87I6jAua/SLqFWyhchbE
         SYmam3cWjql3BaZRzoBSt16RKwF9+2qM/IFqep0yEFX9XFwlA33JzHWThsidCk/PxsXC
         wirQ==
X-Gm-Message-State: APjAAAXcNbx98RRrUbM9Xo4KtsgpKw/6kNSwtRs7Vtv3ulavOrTgSpzv
	iO6HA75qVjHZnR5rUrx8eBs=
X-Google-Smtp-Source: APXvYqy2jDtoFv9Q2SvATCzuz0zWV/BQAWXPTHcggWwBamjEQ3HnXtzHlFNRTRyzlTXm4mAuUdf5VA==
X-Received: by 2002:a5d:9b94:: with SMTP id r20mr28238727iom.140.1580918089433;
        Wed, 05 Feb 2020 07:54:49 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:39c5:: with SMTP id h66ls680642ilf.11.gmail; Wed, 05 Feb
 2020 07:54:49 -0800 (PST)
X-Received: by 2002:a92:50f:: with SMTP id q15mr34133662ile.47.1580918089011;
        Wed, 05 Feb 2020 07:54:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918089; cv=none;
        d=google.com; s=arc-20160816;
        b=VP7TG8XIzcCYH4WeGu5Bx1vkOAinF3xT7EDefODNM8ttX+b7fG1JqWDZGnGUJ1wWoi
         sO3JZ4Gq1xJX+1WTxMQ4s+cjbG55s56+GzUTEQwjcPZEzy7Go8aCPA31N5wKCH2xncYo
         tL8lzEmphUZtz+UWFqfnHwHz4RQAf9pIdzXn60eSFXQjfva9iX9ddIQx/XdRASbpgbr9
         eb7kzEarTpmAF9oWuuI6fIwcjV+946J6vgGwno3pL4hS6CkHHAxC6oKSOFzgtGZpWwGy
         eiBclnaf3e/k7hWqLafXfIl7IaWK29ZccoGu9DRTB9zmrSXrS2DOidPEThG/ZNVt+nSy
         7jHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i0tu/hN5nPRoBqhYtWsd7kOpTFJDnB/EYcTe2/ffTnk=;
        b=V6UGU9kNgZrDQNXPvKvyn28iZ15JEreTC+TKkg4QrK3Bnu5v6PCbSRU8GV/aekpKRq
         hMEeE4bxWuBJ/mAzR0fS27TSEXZxG98Mt725ltRq6Xxbc1Jeu0FPuGN3jdVVNdhAXeXK
         ZMnUXph5BL5V3AQVBM7NKgAVr7SoyZ5gBeQAmRXqjj+tpWi8q6lLWFJSQ1eobPkgPeZB
         RggRQpbhll/uyNE3HmkiuUnpG+rs/njpj3MX3MQ/4jPuJv8b7jDgIF+WlIqQod2Q7pCc
         moooCfL4c5n+hw59E1Tqrjxw3ymfQH8dypEzqq/+4/w0PtyiWQPvxW/IyTI3dlQZ1z8H
         Y8Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PAhbp4fr;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z7si8900ilz.1.2020.02.05.07.54.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g6so1050927plt.2
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:54:48 -0800 (PST)
X-Received: by 2002:a17:902:968c:: with SMTP id n12mr36308895plp.144.1580918088401;
        Wed, 05 Feb 2020 07:54:48 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:54:47 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 00/15] AMD ntb driver fixes and improvements
Date: Wed,  5 Feb 2020 21:24:17 +0530
Message-Id: <cover.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PAhbp4fr;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

This patch series fixes some bugs in the existing
AMD NTB driver, cleans-up code, and modifies the
code to handle NTB link-up/down events. The series
is based on Linus' tree,

git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

Arindam Nath (15):
  NTB: Fix access to link status and control register
  NTB: clear interrupt status register
  NTB: Enable link up and down event notification
  NTB: define a new function to get link status
  NTB: return the side info status from amd_poll_link
  NTB: set peer_sta within event handler itself
  NTB: remove handling of peer_sta from amd_link_is_up
  NTB: handle link down event correctly
  NTB: handle link up, D0 and D3 events correctly
  NTB: move ntb_ctrl handling to init and deinit
  NTB: add helper functions to set and clear sideinfo
  NTB: return link up status correctly for PRI and SEC
  NTB: remove redundant setting of DB valid mask
  NTB: send DB event when driver is loaded or un-loaded
  NTB: add pci shutdown handler for AMD NTB

 drivers/ntb/hw/amd/ntb_hw_amd.c | 290 ++++++++++++++++++++++++++------
 drivers/ntb/hw/amd/ntb_hw_amd.h |   8 +-
 2 files changed, 247 insertions(+), 51 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/cover.1580914232.git.arindam.nath%40amd.com.
