Return-Path: <linux-ntb+bncBCFYTA5O7QNRBCEX5H4QKGQE4PA3PIA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA602462C3
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:19:06 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id f22sf3035507ill.18
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:19:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655945; cv=pass;
        d=google.com; s=arc-20160816;
        b=ghuhSAPaqcMQUM126WEG7PpI6rr2ipOR2jDtqMdaJAR7OvuTonVeyZGmNSdfr0kwfZ
         phZK0HhRAwC5WPJbUb/WCS+LUuyVyh68RE8Z0BtpztGo1t8YRGW1u+25MvQfXo7UB608
         5iaKwAR0v+ncI8YXH6p0nLg74GIw/WfROjbOaazBjDzQ4+1I6lxLCDny+hlciw71HXK5
         uha3Y1e/+pRj4RtGL2xMPmDx5amRphUc6kkNbTJmi9NtGEppbxO7e77i7Do8oFL35QLN
         WJ+3vABto2xkkg/nkDCpAChQk4hRAJhpoNMF3F+idbKRQkzuNhiZFVglYGS+Nnr0CEAW
         9EBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=H4EXnDEjUEK5wIfQZsICJh5i016Lhpr6bHQo6cGg+zM=;
        b=XS1XZUNChYvgeiGcD0Hj2ZHxrDBT/brByUcEXxl8uswShthWBmdPPiKGuWjdrmrd4i
         u9c5EU3GDmg9HwO9EvkE6gegy441JbYrrR7dUHYwThmRuDyqEbl/YFwukK7sQVKh/y5m
         JtH5CYvhYcmqY/zOjdhYWmJv+ftmCg5K99coS3csqZTxWrGKKuZa5JoBfDOsg5W0swNL
         +nZocacHMt6XEXE5E3sJ/qoOZTiDrRxOL26A7UySydwtdmN8h1Ut5XrEmy/LdB0GK2Rm
         XeI1gNuTRiMqBrB/2FEvtXpJZxkCDu1jig8eOkAzG0SMRZGI7WluzTM4nRDESYz6s41f
         jDtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q9//06Pp";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4EXnDEjUEK5wIfQZsICJh5i016Lhpr6bHQo6cGg+zM=;
        b=C7pm7YhcWwNYnegQtghzg3Z3p6Vs32oADl2f0qPLaKGU7bMQ4JmbBSKjtHIDL1uhPi
         zADWJ26SIX0URWxRmDFbR1+r5A2E0VrG1Yeoti02106w6YuzgmnS1D8UqxDuMKIZWl/B
         IZyJk3gMuW8FtFNXRhXIyreLOIP8erD4vXCVDvUf752Ji3c1fzkxdK6H91l3dzTgFW4j
         aAAM6pFXJ6IDC5JIlLkS7HuujQZl+AvZGlhOuRXF7Onjc3A8w/p6bpKKGSDKod9fV89F
         npU1ybDQGKX91mcgIhvP+Veo+nhHKIbh4wWeciY3zG9wLOaoUWpefzDnoLCH1dm8CbAW
         LW/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4EXnDEjUEK5wIfQZsICJh5i016Lhpr6bHQo6cGg+zM=;
        b=gfg+mH8hN93lEjqpFsTwM5xfx1Izkg3Iuh3u9BquOf3s7ntjWYZbV7YMBR3/2UggR8
         RBnURDrfZYm0SXxMHJf5j/XFKlcgf1tbRAfNp6/4WHdhMeavfB+L5dOzyP4cVtdLxzZ8
         Hc5k/3hoIdwO9ZSn6cm0yWoXfVj4iLskgPjzEkVT4ZzaJfAnbwhxX/DP1+DaF/dy+2WN
         QeaGbZrfO80RVr/H81om2bQd3J/ez0uJYdVr5Y+PI4yXnWDrFgOMRT2l+6zVVl/0OLw3
         pRwSx56xe9PxV2V7k5F6El4OWtyVeKu/GHUAyHowQadTPCabXR4/F9ZxdaqSHc9nHUYM
         EqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4EXnDEjUEK5wIfQZsICJh5i016Lhpr6bHQo6cGg+zM=;
        b=Dyqkpm5O9SwQ6yCiNBMcDx68HQV4L+Se3c4X92LHIANxjwFq1vTpy/lwb9X2GesKHX
         zdbxJlJqr5raeHn4Cww9EEFd/z8FPi1OzJBfhehbh9cw9T0txmYwANHrv8dI/02gbsPO
         mdtpil0ZpB9XRfL0XM6i1IaQwxkguxis5k52q29eCcPqOOh9HJbZIf0/UHJ+ksVmv/Sb
         sWE2TJT4mJbBa1wBzeR/zwSCXvoCqgxpx4kplimv7zWViHMhhQTanaFjhl3aFoC+8uv6
         BHZ3xgpNwsdqzObJk8AmrRoYeSGtmo0dz4Tt0VMQo/FRKQNcptclevsGSdGeojdKv9Dh
         7HMw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532T0Ugz7QUbx/PzcK7pE6nosRYV0yz+4WWlSinPeycSR3f3Tqth
	JLTsFaEfAqzAZBHwlmf6HCU=
X-Google-Smtp-Source: ABdhPJwepQwXkOexzFIHOppRNoYpBwvjj4Iojop+FvbrZmTGKf7lGFCdm/j+BUP+NKcDbA9c5wsoqA==
X-Received: by 2002:a92:cf52:: with SMTP id c18mr13026881ilr.44.1597655944991;
        Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:110f:: with SMTP id u15ls3489902ilk.7.gmail; Mon,
 17 Aug 2020 02:19:04 -0700 (PDT)
X-Received: by 2002:a92:d30a:: with SMTP id x10mr12939684ila.287.1597655944694;
        Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655944; cv=none;
        d=google.com; s=arc-20160816;
        b=XTLTShLV91n+ZV1qDLioTtuSd5dPKOETK5aO+nMRzXvSXX8SQz1fxYXlwjZJyQnb6r
         CViitD+qFZcfcwYLj4z7OtMJVw/YyhoT8LcPa65TEpiQFbu2eMtYr8Iw0NtNmgwthdmE
         kRtZnyPVaIbdETG7YHuFw+eWkVqsCxkyM6pedJjMH7g4XUj0aSIhCisyVV2PgjxBwVtG
         /LsxaqvRV7PRmO7YEiCTmyMaLqbvRF4TOcaYKEEdWndy8in0qgM/1SQ6fJosvC+rbzwl
         Jla0VZOtkdtg/If3h/xqrdrqSQFBarCPzXzOLDbr1NPfI9PrlZRItBXFujHHuTYII4y6
         /yRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=;
        b=msq3rNaeRCPYPXk4yMy4PcdDFiIHkvyUl5TzqDmIOEWVINE+2tsZPvQb9xvPWfSb8x
         NnboWxI2YwwoZ5DIYLLHeFH6BwPsApZ6yY86KnfkqhQJuwNPobLdppdnFAezSu+kXsNO
         m6bV2ok0Q1+2o+baLlgzXF+J87KWSn9B4Q9cPXU0PNE94rcxHOg/4zaJjKQtmSTY1uB9
         lWEVTkpDmC5A9wSnJEx40l8kB0SRSenHdOtTSTy8UUmbOvt6U/hTGptJtjiX8QrMKc42
         TFMP1rIDJDN6syXFR1Hl8gbXCaInFVc7mqi9WvbfbARIWgILaMgHiDR+c/y4CGJo46/K
         16bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q9//06Pp";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z7si812347ilm.3.2020.08.17.02.19.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id i10so2286729pgk.1
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
X-Received: by 2002:a63:5552:: with SMTP id f18mr8843602pgm.298.1597655944120;
        Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:19:03 -0700 (PDT)
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
Subject: [PATCH 1/2] hsi: nokia-modem: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:06 +0530
Message-Id: <20200817091617.28119-12-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Q9//06Pp";       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543
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
 drivers/hsi/clients/nokia-modem.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/hsi/clients/nokia-modem.c b/drivers/hsi/clients/nokia-modem.c
index cd7ebf4c2e2f..36d373f089ce 100644
--- a/drivers/hsi/clients/nokia-modem.c
+++ b/drivers/hsi/clients/nokia-modem.c
@@ -36,9 +36,10 @@ struct nokia_modem_device {
 	struct hsi_client	*cmt_speech;
 };
 
-static void do_nokia_modem_rst_ind_tasklet(unsigned long data)
+static void do_nokia_modem_rst_ind_tasklet(struct tasklet_struct *t)
 {
-	struct nokia_modem_device *modem = (struct nokia_modem_device *)data;
+	struct nokia_modem_device *modem = from_tasklet(modem, t,
+						nokia_modem_rst_ind_tasklet);
 
 	if (!modem)
 		return;
@@ -155,8 +156,8 @@ static int nokia_modem_probe(struct device *dev)
 	modem->nokia_modem_rst_ind_irq = irq;
 	pflags = irq_get_trigger_type(irq);
 
-	tasklet_init(&modem->nokia_modem_rst_ind_tasklet,
-			do_nokia_modem_rst_ind_tasklet, (unsigned long)modem);
+	tasklet_setup(&modem->nokia_modem_rst_ind_tasklet,
+			do_nokia_modem_rst_ind_tasklet);
 	err = devm_request_irq(dev, irq, nokia_modem_rst_ind_isr,
 				pflags, "modem_rst_ind", modem);
 	if (err < 0) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-12-allen.cryptic%40gmail.com.
