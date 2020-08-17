Return-Path: <linux-ntb+bncBCFYTA5O7QNRB6MV5H4QKGQEJ7H5T4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BECB3246244
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:16:42 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id j11sf4494462plj.6
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:16:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655801; cv=pass;
        d=google.com; s=arc-20160816;
        b=QmahegxAsCvydoTTI/aac/JCzHS0XyeDVdjokdqFZ8cWVRTFxHoxSHOFUXi81Ok1pI
         DDItQPcWJuBZy7oUAZunkejxAKRO9y1XBwlBe3hRDFXS1L2g+3eCQUu6/kkWUB3g3KO7
         bLY/ZxnG9puyKSNaJAifw/hN69MSz5t1m4m1Pge964PdmS9+zJLZOkaS0rO0EIwFE8i5
         spmsT+lNggNfmehD+k5qCIQ3kc7vZM12TvWatQGJdu0OLjT1dFMZiqIsyJ8YzgWYEiik
         DkEvqNu/yCkoghmvJy/YPjAaMuHeyyTIAyCYaKwKNYXjwr+egqcGKdVq+ggxU13o2kOK
         lyvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=b3f63BYIEoAO4bYxPHLKrAcnJb8RhfUTNNfPIFLtgTM=;
        b=tmsXbf+UIgE7OlcrZAJqHW1zgymet9rcQRPZBN40frO+287Qi50ZIowDRlorBF6/+n
         4NkALN1Avhk8zmdnKVywFCjD+JdalBo50+9cpA3N97ReYVhiWzj40IAJ66h6TdWf90w1
         YKdXqqqTi9Lv4uEDtjiXMvWMCfAPM8g/cJkNFPY21rg+XbAEMtoWIvjQRf2WbqIh/9Ta
         fKdb/M9TRnUujJW5ZxvpxCMEALZ2gSOvQ4H2irtnLG3Fc2avFAs9eWiypRpVOYHn3K+H
         SvLH1g7Pk8wo2b62gQ1aWCteLMQUdpoFU1TKXDQVH00923k4wNUpZl3g2zjVNvDt9A6l
         XmBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mxWi/elP";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b3f63BYIEoAO4bYxPHLKrAcnJb8RhfUTNNfPIFLtgTM=;
        b=eqA5B+Hs7DTj0nRaPMc+ZcrC0XxkWlR8Wr6HXcXp9b+tXSmnVEEqbhOzyhkt9kyOs9
         9D7wzlCEF6oCwaiywZuRLOX63HYyLV3/lU1jyWEZlhCfydd+F13hoiVFysXTSq0fLEP0
         bpxmw1sbyrswJv0BGNDmVhJE+bFpgiygjDCYcw5RSlnHHcdiPGF+zx3QmN6FvnvYDSGB
         jaJWNt5E+PHUSW8g7iXdqmXs9r96GKAnikGRMWbma22STtkNesFu5F2g4qUb79bK0Uf+
         VyAy1z8lcAl1uJve3p+ybxfHMrkomShWmaRIapq3i6ENapVbayoC4nxc9TnVJ82QdLzQ
         grrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b3f63BYIEoAO4bYxPHLKrAcnJb8RhfUTNNfPIFLtgTM=;
        b=OAtL1xqKE/3pVGnaSNXGqq6fsfvD6KaQBqp9qnF40cpAjTKOgRzTr3k0GudbW04uAF
         v+B2coX5CHJ2k4uGzOZAL/Fb0LTKUectZczrYRo1MMtAlkuwXzoXyYzyO7KJQOpqNzxK
         egbU94Zu8/1iWWcpmIW/TRUIHhruQXF41/92J6fv02VHGDclbobikv8zqSOA8XLtKwNf
         acMVb43Sndt+c8aZwhvLZ/U/+eao00mCWdUX1IcYR0FeYBiuWJl0wJWk3/S9SJLdVN0D
         fQ4MHEAiY2ZJ8gnddzcIuIB+KUx5MmQDUZwozpiPbxJeXAd9hXPW10Nrhdtt6ci86dv4
         AcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b3f63BYIEoAO4bYxPHLKrAcnJb8RhfUTNNfPIFLtgTM=;
        b=PUmWhvhZRaNk6SAVg/UsHewl689npaaBuJS/s6XpSXxV2OXciRY1LkbEuDSE8lhODo
         CusbZsjVptKQhfTp8A1cp+EKsRbkdhfAYALXj6HQnEmNl2AlSGavVUk4GZiVTmklEwUY
         Qipni1ZYyzBdS4CuCrLl0zavY4kG/fbLxXFSETXvcNB+iq8gbjQHJ9vV/99bjZ5xRwGM
         03KjmeSDRfoNgeLxGTCzS22YafSdZl8Jlnkm3qQ6OLcFI5UAWI+ZqCUBnWLrgnegu7yo
         AkZygbh/iaKbzWMZm/7odwzgsMcJp1e/hEEszmKvz0uwXx1LuA9uLVqL5vy92ctOvyIJ
         +7qg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532PeH5mdFpZRyWJIjbcavPMm8iTn4Ph4ze7owmTw+jxH0Z141Sj
	rjooZhot+gKMJmjdFkGuIck=
X-Google-Smtp-Source: ABdhPJzSLQSlC8q5zgGLAaxpRZk8HmQNaT4t9ywnK5hCfl1YXOLIVaDC3PbxwUC/CfVTRgaqEJBo7A==
X-Received: by 2002:a17:902:aa91:: with SMTP id d17mr10614299plr.27.1597655801486;
        Mon, 17 Aug 2020 02:16:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:8cc7:: with SMTP id m190ls5608306pfd.2.gmail; Mon, 17
 Aug 2020 02:16:41 -0700 (PDT)
X-Received: by 2002:aa7:8757:: with SMTP id g23mr10564658pfo.283.1597655801023;
        Mon, 17 Aug 2020 02:16:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655801; cv=none;
        d=google.com; s=arc-20160816;
        b=wykMmUoLLUYHM8XKgQqnqqL3Rl+6wE/t4HsjSjRePb3xcB7BWNG/pCrBw/Amb9gGP7
         QubLiFfeb1oWVKMmiopHrxQLXdznSI3oksF9x/oMsufI/LzAthFK1g6Di1UzmvJlPD9Z
         gWLubN+TWoBvUi0RaoyWfoB8or4zqP0JPlOOLG6vTKsAH5otjgz3w3NWJAQgWY50VLnd
         ywoAjRb+zDaAZdZfpN5bSfVLziwDRa0GF/yEilSjWRhYTahXphe48Yhpu7alEiEqRckk
         93vUlWT8wZUAd673q23cA+ogrZbgRfp7KtSmOs2opUNUFTUacvHF31JVO/q/vKVEUw10
         JkZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=;
        b=L0n8OOfX0ecFaIuU55rNFs0+HLWWgtc6pZw1oajpRqaECFwxUAasEBYqdPbcVPFqw9
         0KU7xXEoxdmV7F7LV6aqfVFRCKSVK1WFqKZvn3I2s/j/uFLdycs6dFUDrw4WQ/j9qg8N
         syBxs7VGdJMqrGDC+Zm5j8jLwO8E4UratI8S6uQanslN83V30aR53p9xzcnv4q/SU3o9
         n5GU4AxrbFRbnU18Npod5sho5x1803WiKUVsQYhBzlcnqObWPve7IAp1Lft07yu4o0cF
         2CqDXBz84HDZ/9X5ZNGbpv04+9m/N2nDgSQxQfTKLuks29+4LFwMq7W0zO+Vj1Aopjx9
         0MYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mxWi/elP";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j4si1041080pjd.0.2020.08.17.02.16.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id kr4so7516373pjb.2
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:16:41 -0700 (PDT)
X-Received: by 2002:a17:902:8495:: with SMTP id c21mr10840498plo.82.1597655800670;
        Mon, 17 Aug 2020 02:16:40 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:16:39 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com,
	3chas3@gmail.com,
	axboe@kernel.dk,
	stefanr@s5r6.in-berlin.de,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sre@kernel.org,
	James.Bottomley@HansenPartnership.com,
	kys@microsoft.com,
	deller@gmx.de,
	dmitry.torokhov@gmail.com,
	jassisinghbrar@gmail.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	maximlevitsky@gmail.com,
	oakad@yahoo.com,
	ulf.hansson@linaro.org,
	mporter@kernel.crashing.org,
	alex.bou9@gmail.com,
	broonie@kernel.org,
	martyn@welchs.me.uk,
	manohar.vanga@gmail.com,
	mitch@sfgoth.com,
	davem@davemloft.net,
	kuba@kernel.org
Cc: keescook@chromium.org,
	linux-um@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	linux-block@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org,
	devel@driverdev.osuosl.org,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
Subject: [PATCH] arch: um: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:55 +0530
Message-Id: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mxWi/elP";       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 arch/um/drivers/vector_kern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 8735c468230a..06980870ae23 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1196,9 +1196,9 @@ static int vector_net_close(struct net_device *dev)
 
 /* TX tasklet */
 
-static void vector_tx_poll(unsigned long data)
+static void vector_tx_poll(struct tasklet_struct *t)
 {
-	struct vector_private *vp = (struct vector_private *)data;
+	struct vector_private *vp = from_tasklet(vp, t, tx_poll);
 
 	vp->estats.tx_kicks++;
 	vector_send(vp->tx_queue);
@@ -1629,7 +1629,7 @@ static void vector_eth_configure(
 	});
 
 	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
-	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
+	tasklet_setup(&vp->tx_poll, vector_tx_poll);
 	INIT_WORK(&vp->reset_tx, vector_reset_tx);
 
 	timer_setup(&vp->tl, vector_timer_expire, 0);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-1-allen.cryptic%40gmail.com.
