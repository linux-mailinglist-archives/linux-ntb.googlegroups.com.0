Return-Path: <linux-ntb+bncBCHK3VHCYUIBBZGK5PYQKGQEORAWBII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 776EB1534B1
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:17 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id b10sf710939uaq.3
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918116; cv=pass;
        d=google.com; s=arc-20160816;
        b=egiMzuXm7IIN8iTDNMAPWr2kTx0PH22t/Nq38xA3JyRN+PtDVjMLIWVFb1AvsMBVy5
         TrXt2ZE8owFgz3kw1VSPM8sru7swNt8RmItzCmTJ3tf9uSpYtMaOkv+29dIFmabqRS9u
         QpGCq8r+HDWXzLC90eCPYlHsNHhuf4PC5BLtIhLAzaLLeo920AZcyovywIFCqI/0oEKP
         A7jJqSCatUvosf2zCnZD5AChHAQxfYmCHNvkKi9R+U5lsf2vkD7/Sc4CL4AxC9pcK4Ji
         d9jNcyNK7VbDyeUWJWHUHXaHOy/lGm333I+yfS5OxOC19Ih4n1xmZgUU6Vw3VnVbb3Xb
         opVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=Pbp5qlRE9VNW1RPPSuRoceYSWXHsEzaSBY3Lt7REV+w=;
        b=N0a8OgMlsRnqZzeVciOzcJUBpuVrYtihhuxZGI9xXgY0XDnukUTSn9QC4j0N1RS8qB
         M2zq7pMyc+hWMxWe38WzQT7KSkrr98VhTIGAWFKyjjKssLFjLkxxAcsSQ5VjfkmYGwYC
         o9L6X+qaemiC4A45Pvz2s00BRrVit+YQywNoXZ46jSDKwV6A8JaXbpRmeO5a8qL3afj9
         bdFfpPZu8zJStJijn7mi4ZijbOskqxdZE6+EGJpyvnrmFvTAl0dRwIK49SjIv+8gZr/y
         hHJxaVnAsPPu+WIH+TqhyhNE3SETEnOlDN8NvRrLVKYKGz1znDOl7kFZO2ygR34Iawnr
         i9vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZFXdztB;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pbp5qlRE9VNW1RPPSuRoceYSWXHsEzaSBY3Lt7REV+w=;
        b=lt/sCm8N2QkfzJhB6iyFr9X1rgiDOZJIhpCnHjew/rZ4bX1Cs/1y8FX1k/UYb/sGIV
         BBDPQKXQ5LnAZbB9O6Vtrg5FEcN48VnB+gieotwy5AJeXw0i4tf1NMKI1M2ocwuN/iIs
         zNYFyYLCTRm9qL4Q7spGocMOItauC6/nhl1hGAl7grhXH1lAL5b+WirBPpJxSp69aZ2J
         jeSSDBB9OOTeq2lwCKLUOVx2MBJrlwhET0846iUqPd2KZBcwupApFGxs6oWeatcQKRAy
         xdh8aErT7GFU6WJBoQxx8Ml5GTV4ZUYKh5/ZlHWNtGrUWCBsGo8THIKnUY+7M7EjitGM
         o43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pbp5qlRE9VNW1RPPSuRoceYSWXHsEzaSBY3Lt7REV+w=;
        b=p+Kj6rbo37E0+tZI+av6jXbfhv1TBVKDJoPnyG/xTCX9RShg1lz19LTjVE2nHF5DIs
         d1OAlvseMRKQCctycMEBv3WWkexywuTiKzr5e+tt3Da/8hN3GPpQAiCMAPgjENXgvFKH
         7D3KbiK+LCETy4GQD4RqBFAZmhGjDh+zAIAvKYWpPIwjtvt4/39kp+IVsfKZnmxw2lma
         +uF2kNy4v3wiDZ52N5S322MuBAp6P74JqATY2VysW6WgcegVxNheODlXjrlRA3MjSjTq
         HLjoPxJH2beJFvwkYhY8Bvuhr2MfXDtkcN61fSxoRCI0afjV2uyDrmgVsuY4ZGPp/emh
         GutA==
X-Gm-Message-State: APjAAAUybOo0AYG2AG+sBjR8lEeMRBotewxEbF1CX9/72gNq90Tqr9A5
	BwEJrywoQwFmzzrDf98095o=
X-Google-Smtp-Source: APXvYqzGg9rqjtBzRnPn80+P4FTbiUQfTHpfyURLnBYwIfgOhHNh5wrRxjANKX3RSNFXNmwTYrduXQ==
X-Received: by 2002:a67:fb14:: with SMTP id d20mr21260839vsr.136.1580918116483;
        Wed, 05 Feb 2020 07:55:16 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls347704vsf.6.gmail; Wed, 05 Feb
 2020 07:55:16 -0800 (PST)
X-Received: by 2002:a05:6102:a10:: with SMTP id t16mr22646748vsa.130.1580918116047;
        Wed, 05 Feb 2020 07:55:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918116; cv=none;
        d=google.com; s=arc-20160816;
        b=dGm4iO09UhYDo0oRZMxN637ABQWvRikDhMX/vT20h2ERLep1pg7Eo1BgQIpJbg30Fs
         5xro3QJQfPyWnrhOa2JYyNKuEZFGwHUHt7MAAIYXXoPhNTrIk1esEauiOxsTXzWr+/Af
         NZctPxixWhHb+2pyp4XtU+HDjZ1JN4UerQiGmKCbW9J3BNBUHSDrd0yrW/avWbpwrJm/
         0gJmAwLEfMBE0fccPhGi28g705YpoKJuy5MP5kMzf39T3kpkhcJCsLcTtz89Hlch+iKg
         bm3ChdKnnJF0o/nPvpp3ugRybqhhXGEyV/JFUZzhdX4f6jbHTQoMAzqM6h6EWKuvbm4M
         CKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2uclY266m3vl3O6CK5JaBmW5CVIO6lWzMDS9vhDGfZU=;
        b=tmTBMOhBhC3Qvx0nRERsuXADVI5NRd5/1jEw6ZgZWOn3uhsCsQWi9RW3xJRlmlVrKy
         tQnwfSSGZm9kA0o5ke3E2ye/bSv2Jlx6drlam2Yx2XZzLFqA0AyhyjqmBNFyneSLPgF6
         bmKm1jE9JBKfe2Nrh0LeWdO2RYDIzXM2WSHK1aNPyD5STLsUJ3ar6FVNYmwp4A5VbvKW
         sPuYkJ7mZ6w21SItqKQTjdMzh56MANNiUxR5Q4U5cKlRfKbrsKe8LLY8V0nDTaM6fbE6
         kFFu7rcNfWdEXS6pz+Riwm5FgthwEr5iNZ/NOYW1uoJGX77u0KtfhWTpfULXKOtImoRR
         W2aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZFXdztB;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x127si3097vkc.0.2020.02.05.07.55.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:16 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so1171696pgi.1
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:15 -0800 (PST)
X-Received: by 2002:a63:dc0d:: with SMTP id s13mr35858064pgg.129.1580918115197;
        Wed, 05 Feb 2020 07:55:15 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:14 -0800 (PST)
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
Subject: [PATCH 09/15] NTB: handle link up, D0 and D3 events correctly
Date: Wed,  5 Feb 2020 21:24:26 +0530
Message-Id: <4c07c3e337fe2343d9fa0ff234c2d85543198274.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iZFXdztB;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544
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

Just like for Link-Down event, Link-Up and D3 events
are also mutually exclusive to Link-Down and D0 events
respectively. So we clear the bitmasks in peer_sta
depending on event type.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index d933a1dffdc6..a1c4a21c58c3 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -568,6 +568,11 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	case AMD_PEER_PMETO_EVENT:
 	case AMD_LINK_UP_EVENT:
 		ndev->peer_sta |= status;
+		if (status == AMD_LINK_UP_EVENT)
+			ndev->peer_sta &= ~AMD_LINK_DOWN_EVENT;
+		else if (status == AMD_PEER_D3_EVENT)
+			ndev->peer_sta &= ~AMD_PEER_D0_EVENT;
+
 		amd_ack_smu(ndev, status);
 
 		/* link down */
@@ -582,6 +587,7 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 			dev_info(dev, "Wakeup is done.\n");
 
 		ndev->peer_sta |= AMD_PEER_D0_EVENT;
+		ndev->peer_sta &= ~AMD_PEER_D3_EVENT;
 		amd_ack_smu(ndev, AMD_PEER_D0_EVENT);
 
 		/* start a timer to poll link status */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/4c07c3e337fe2343d9fa0ff234c2d85543198274.1580914232.git.arindam.nath%40amd.com.
