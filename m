Return-Path: <linux-ntb+bncBCHK3VHCYUIBBOHR5PYQKGQEYPPAQIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ED615362E
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 18:17:46 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id d127sf1932239pfa.7
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 09:17:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580923065; cv=pass;
        d=google.com; s=arc-20160816;
        b=pbx2adJUTadzLsKepGGwwJfadJt1ixG/ewO5B9epMJrP1CMDkbhofwW4GLuBklXQx/
         3U92trLLo/CTVITSYpd2gokS57IBGK4ZtEhzbRoyPwqpGtxPK/EEtC0rlW0HhZB0PlVD
         ymf+J846WRSl+TPVYLKldTx1Vk3Xnke6TfSFWO8rPWKM3RW3pv9UCwuGrbMrj4aBPj6v
         eHSDjb1E/46MMTqdS/YKYVq0seJ+wvPKdZeUCpOmEqetvzfbqzV7LaNQOga3zFiNgT7e
         kbPeBqSdSXrr+PGag1V6I90tLUn3BjEP2lCrSaisV9ow8rM0VeMDcGgvdTvbQqhAijPi
         xlDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=7V6R1tSJ/jbDWPzmsIWsmxE2N9jSGdrci35RfJFP28E=;
        b=b7Zb8TD3OjNf7cxpGI9WfDzmPitDY2BwhVjUUCcVsaHtEDU/6gmHYZ19vEhNGVnz2T
         izJBLRtpuYVbCIOToxr0EbZW1mGGXXfbeXNz3MxwdO0LkS1ac0NiboVKN/tHpwF8q7S3
         k9k2FYtdG42xKvT3Ibpbgalnmz4DDzfWbldNaJjNJoaMNCdb5eqItNGnnmOrvR9SNsn0
         uwJ8wD2z1d8uh7DclDHvH03IugzdH5vGN9TjYKBahP9F2oyFuNawB4/ZtvisRLdx5ERo
         RwHr+F8tMhlcFzOndBlEZ3BxFE2x1YJv10yVR/6UitUB53L6Z02//DVDI9dh6BNPXsos
         ykYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JNt1RExN;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7V6R1tSJ/jbDWPzmsIWsmxE2N9jSGdrci35RfJFP28E=;
        b=tc+Ckp4vx0TOaPY4BB2xMekcxpEupKfXeyjCrqTFIOSt4xvqX4pbTqnNmDkSAtQsHA
         I0EhFmwh8GHxDeOc8P3GidVaWXcJSaJUiLPoQIjyf1ZyheLRbwqB9aK+owpICIllN5HB
         lNAGOKddFcbTHlFxCrY7+FdNWK3I5cH0sSucr+znkYIi3QQjz1RMC5jMVdInfkrGqBcP
         7hyOFYRVHzjwy7hLtyFgEiZZ0tI6oRmeNFhUWBTRRGf+bcddYRUjaP8qo0xhc59Lfk9X
         v9I4q4vrXnTqTnyiXjW5KKSIFBJnGIL8CaXfmspemmvKLtjrmDMWUsUez50ETObV8Ij3
         koSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7V6R1tSJ/jbDWPzmsIWsmxE2N9jSGdrci35RfJFP28E=;
        b=VAuP620LIcmLQ6Z52+NT5iHeJo0Oq3KHNmgQ03ZU4+15NRwGBCUj0qW3Slo2gJvQW4
         diy7YNqb5a1l3orBNGN6al1kvci8jrNy2QnuhdvLgMtrCTFr+VD8p27phsysYqM+K+4L
         77KHzBttIJ4eAvYC0zKvDSLC3mrTU8OZSbtOKo458TNfcH75RRHJUyGF9ilmlZPV0XHJ
         wv710glwXHfOzN2AWVc7XdmWCz1fBNugDWKwduKLnA8opf66luVQJLj7VJ4oefjTaFnZ
         LmQZUBVXgNWNy3DKbJ4MSTvr/KZaQKjPt/vzbc9fvZMCU2ChTgODV8sMZxhIGQ46B0hn
         bcIw==
X-Gm-Message-State: APjAAAV7n5BalY9t3ulZ3YBGNaJnkzvv4vg2os9nhKYDI9f0I5+8Xw73
	LA5YRvRQSU07aWkOHbNKtwk=
X-Google-Smtp-Source: APXvYqw9xuOs7zhBPP/uqSQBxCBZpTspELv8CXLTzcvTZdmG9lucC+M3jqKnWHEjshK8cbchzjh4tA==
X-Received: by 2002:a17:902:8341:: with SMTP id z1mr35084095pln.178.1580923065122;
        Wed, 05 Feb 2020 09:17:45 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls1251054pfn.10.gmail; Wed, 05 Feb
 2020 09:17:44 -0800 (PST)
X-Received: by 2002:aa7:84cd:: with SMTP id x13mr39075347pfn.130.1580923064496;
        Wed, 05 Feb 2020 09:17:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580923064; cv=none;
        d=google.com; s=arc-20160816;
        b=Qz01TmFln+Nv54m2ibD4xJAghHqT4lGrsn84TP9cRxvNKEnw36IeOBHnM8x+m365Ji
         MtEtGsWciCFFOogvQX8gL301UlL5xTxce0p4n+7UNwM2L4m/sMUC2kCz507vjjH5MIQi
         Pk5CYMPUFvr+wF8rE4FZKhJ6dlWZmwsRK3QOsUm7+w68xeRbP/q3hTo7UhnFd9AcUvpj
         SSPwXm8Co1c06h9SQhHJL1fVZZvgWH4dSds6EkdtVuQjFW2zap42sLzdRJU/VhV4+TJR
         fOsmIbUw7GbPSW3fqNHHIJN/bz+/baD8Z8KEST7TomoLIJlkdFvAVmR7Gi+ROuDGqGL0
         YVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gro8+/WYQ95dq/YkmpDcqQGotCrT27nrMh3aJyFjzsk=;
        b=YWusHDgqhhILAoe5BSE7BbvQD/NEZpjakLZcBKzIOu5RYCqs7Z+SFdpOyPK2lWSkF6
         kOKzHXk8sbEVRKG9sT2oqCC3uM+yBucNSJvkKV6Z1gKLiTDzDtHcXoB5ozpBZHgHP2+g
         ieG5sXIuBzzTG8NaA4gn6WIpfFWDtNK6NS0pOFgtTTTdFd37M8edgIuKv5oXbduyRHyF
         vNIEvCF/x6yLaEhT0Y+G+M2JQBGL4YYv/hZjV1vz030Ud1S/3rs9ajKVLGSBMJhJt3nA
         bgb5hI/gyaC/YZXOXJU5GKm5+NWAHKu+P4eQhuIUFp/XWKl3X2EZ+DJ89B5HgcYXS0Xa
         8b5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JNt1RExN;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d12si385846pjv.0.2020.02.05.09.17.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 09:17:44 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id s1so1526776pfh.10
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 09:17:44 -0800 (PST)
X-Received: by 2002:a63:e04a:: with SMTP id n10mr36912315pgj.341.1580923064263;
        Wed, 05 Feb 2020 09:17:44 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id l8sm357945pjy.24.2020.02.05.09.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 09:17:43 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 2/4] ntb_perf: send command in response to EAGAIN
Date: Wed,  5 Feb 2020 22:46:56 +0530
Message-Id: <a7db6b564428dd1d4d2e93fab76f8f582f63fb9a.1580921119.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JNt1RExN;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444
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

perf_spad_cmd_send() and perf_msg_cmd_send() return
-EAGAIN after trying to send commands for a maximum
of MSG_TRIES re-tries. But currently there is no
handling for this error. These functions are invoked
from perf_service_work() through function pointers,
so rather than simply call these functions is not
enough. We need to make sure to invoke them again in
case of -EAGAIN. Since peer status bits were cleared
before calling these functions, we set the same status
bits before queueing the work again for later invocation.
This way we simply won't go ahead and initialize the
XLAT registers wrongfully in case sending the very first
command itself fails.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 0e9b9efe74a4..5116655f0211 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -625,14 +625,24 @@ static void perf_service_work(struct work_struct *work)
 {
 	struct perf_peer *peer = to_peer_service(work);
 
-	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts))
-		perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size);
+	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts)) {
+		if (perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size)
+		    == -EAGAIN) {
+			set_bit(PERF_CMD_SSIZE, &peer->sts);
+			(void)queue_work(system_highpri_wq, &peer->service);
+		}
+	}
 
 	if (test_and_clear_bit(PERF_CMD_RSIZE, &peer->sts))
 		perf_setup_inbuf(peer);
 
-	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts))
-		perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat);
+	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts)) {
+		if (perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat)
+		    == -EAGAIN) {
+			set_bit(PERF_CMD_SXLAT, &peer->sts);
+			(void)queue_work(system_highpri_wq, &peer->service);
+		}
+	}
 
 	if (test_and_clear_bit(PERF_CMD_RXLAT, &peer->sts))
 		perf_setup_outbuf(peer);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a7db6b564428dd1d4d2e93fab76f8f582f63fb9a.1580921119.git.arindam.nath%40amd.com.
