Return-Path: <linux-ntb+bncBDTZTRGMXIFBBPVTYDXAKGQEUXVLQJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EAEFED9D
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:46:07 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id s14sf11879775ila.0
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:46:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919166; cv=pass;
        d=google.com; s=arc-20160816;
        b=slizRt/tzmp+0LULjssz1JM1+cT2HcrncKb+Ew+VRVnPcQ5qSlFNeGhpeWHIfrx7ZD
         3QEGIh/z1Vl3WTGDxHhf2mIp798/Hd5Tdlz4YHzjUgXpwhpKjRNBbwqiIDN1AjK93NpE
         ljiUlcEl5A9QLJXjY5DWwZ0dWNcRlKzyEKPa8pyTOFflPoNHwP4U/4EE888soQiYpB6k
         dctFbI/l52FWOqZ8dLcS+zVo2tsqtydg7Am0u7+jhbgK0NnNIH4d29r6DmgrXLh1rS1s
         /8HxVYByS3RFV3sxnJPIIDduULQEXC16Ti3vSP9XIe/vwi/TewhsS6jBVkrm1KHXbkk6
         F/2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rZ8a4qHWa6kNpSlSS4o8oIMeFw5zlst7pMjetAMFjX8=;
        b=yKk3TOyst0/utygatFyIF6eLO4cE70fzIhMoOJrCwHrcueKsPr3aTLaxpQo7o7khHe
         8oOgLr4hQ/4L8U67HMpAREfIPxaH1BdxQH1jVckp2uWVNTjdLqEKNSPhzgGce13qA976
         jFtcdUl8JYOcaJJ69i2jrG5zEEzxEDYHk1iZ5pDWc0+WQDvKpLHKTFwWXA2UDdEZWW9n
         2g7qApzgm9etzQImCHYx+de5pwkxx/Xi7fZkFuMMg+hBsdInA1N+yrlqYoYVyeE/QPcj
         o8m/EEsb26bMlUveG3F8Kws16vTNopWsI6vr2WRqHXJBOH4FiiRn3obHrsTPa4+cFSgJ
         K5qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HbpCe8VR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZ8a4qHWa6kNpSlSS4o8oIMeFw5zlst7pMjetAMFjX8=;
        b=EW9YIccWy/i+BpsHu3LTWDY1yDUOY3NG2y7Fal3sG8F5tuZIwNk3QHr8M0TeqLRbdM
         meulI9Pn/35jqppQTZ60kwCNH9pXeV5CCfYwhAODVcGt1mXhcvs3iOUux9kSn/BQb/pf
         d8gqPX9l1w0sGX0rMwRxHdALaYW0ehzkC92ZSkxQr+ViFiEUQvxkhhx0hvGpt3hMps38
         Hn+5mgolvY8fdUjZKmQ1DL4DNFPEf/4FHOEYPA+NpDhFL4BgN6ojXYyPZ8VeUE83UYLZ
         nkJ8uDL7hal1/mZnQIUxye+hZQoQcrKjvBtnPUT/eiSyvWdh0LOmAJx21isGJNRyeKXz
         OTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZ8a4qHWa6kNpSlSS4o8oIMeFw5zlst7pMjetAMFjX8=;
        b=p1S/rl1eUqLXOGHGVhPVwlOsKuvIZZf4gG5FWeMwDxExQvBGRjEPJwICyUsuRrwcmK
         TiqQlOpBaijJS7Ut3wRNFfECG7e+N7NbPXgnOs7hqhmt7/Mq5KdSjP9ZM9CJLV5HywiN
         pIyr3L4yrdmbf38Yo4y2TtUTyU1kktfdpJf5AdMMmqve1jmGD3/+yQFAdl1kScLHtoFa
         t8+dgXo4MxsebtiraX6mBciWvkIvhdwZ/1RBxK/Rs57qBrW0sWmEY0h+t3Lc1U74TU+u
         CHH4BrdEJzVct7rQ21dtw3KI81Zl/K5GoVL1+xiUjyh6EzIeJUVkcsp3akgOuVta4lnN
         JFiQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWMo8ND//9xOBgJc52rCG3wzU30iV0Yy3OjEH8xM/KE3Gl8s7zY
	tBs6lqLBTub8kXBXhfKdEa4=
X-Google-Smtp-Source: APXvYqyC3nksR1aebp8Sd2vXWDBPt8g28Es9g5xkXNbG6IWPbgdBhgfS4Af4TazepTf+Tf6efqWViw==
X-Received: by 2002:a92:4804:: with SMTP id v4mr6881772ila.201.1573919166205;
        Sat, 16 Nov 2019 07:46:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5e:d915:: with SMTP id n21ls2021794iop.9.gmail; Sat, 16 Nov
 2019 07:46:05 -0800 (PST)
X-Received: by 2002:a5d:8854:: with SMTP id t20mr5912560ios.301.1573919165875;
        Sat, 16 Nov 2019 07:46:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919165; cv=none;
        d=google.com; s=arc-20160816;
        b=XXaOzUL/+X1ZGaPbOBG8dSnqhq+i/RB/lSe2CO7WkjLNhMu9GtCMUbgo6bgWYnfsT7
         C/7l33qpTaubkuSGqvKKNaevCHNrGtsxBty5Hsvlin8AZVsw1/qWrzmaZEixWJaHeFo/
         sAlVBZF4OXcCaJa9U3K8eaCn5r5oIQ8DDorgawzEyBSGj5TUowmwkFDHLNZFmKigX5wf
         lowB3QJYds/QVrN/OJf5Bab7xg1bxNgN0nwpzvNwTt4KORWzVChfMxJT2snh+ceBNMey
         gtTXmdkhkgWGNN39zf6z+Q8MpC0JrbjxlE/GvRurhkmIZ6xvQTb3LyWBUmv6L5pXOZau
         sYLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KbUVUWEpw2r3Xpm0T3s906VuZ3DKWKipNHOFKzEcZCU=;
        b=NTkJz3PJiJdZV7xV+59ypmtPPmCwnay26rPUZnHTN0z+7g1k3xbg8MIQoQpz+6ZHWN
         jFUZeLZGjJ6taTFGNN9jOD4mYPQfh/tA6igxvAXCYZQbpEjGXnHX9WCu0jjCoMUlQrAw
         OjUftxxTRIBkDWsB+iFKPaEXFzyaIcoTpVwoRzEUT8/R7dztb8Hu5LB5jAPRaQoMTnzT
         V+dPxLtJSZqMOkI+BE9xks0pJ8LyYinrrDF0eLvkKkG7BPssGapgweNq63uqppb51Ksm
         uaXtyryOKJceXVaV3H86ez0OWkIOsaHhyH2hPebP/7TM7Q3PeDSvy39VJTnKCWry/QAQ
         AWAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HbpCe8VR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y205si732946iof.2.2019.11.16.07.46.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0782A2083B;
	Sat, 16 Nov 2019 15:46:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	Lucas Van <lucas.van@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 173/237] ntb: intel: fix return value for ndev_vec_mask()
Date: Sat, 16 Nov 2019 10:40:08 -0500
Message-Id: <20191116154113.7417-173-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HbpCe8VR;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Dave Jiang <dave.jiang@intel.com>

[ Upstream commit 7756e2b5d68c36e170a111dceea22f7365f83256 ]

ndev_vec_mask() should be returning u64 mask value instead of int.
Otherwise the mask value returned can be incorrect for larger
vectors.

Fixes: e26a5843f7f5 ("NTB: Split ntb_hw_intel and ntb_transport drivers")

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
Tested-by: Lucas Van <lucas.van@intel.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/intel/ntb_hw_gen1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index 6aa5732272791..2ad263f708da7 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -265,7 +265,7 @@ static inline int ndev_db_clear_mask(struct intel_ntb_dev *ndev, u64 db_bits,
 	return 0;
 }
 
-static inline int ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
+static inline u64 ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
 {
 	u64 shift, mask;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116154113.7417-173-sashal%40kernel.org.
