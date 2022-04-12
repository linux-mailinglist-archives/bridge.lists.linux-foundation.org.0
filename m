Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A20BC4FE25B
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3640540290;
	Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPd-dozQp22j; Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8E3034027D;
	Tue, 12 Apr 2022 13:23:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9EC8EC002C;
	Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 935AFC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 902CC4027D
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XWb30xQu4S1n for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FBBE40274
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:11 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id g18so12365496ejc.10
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uUhhwavoelOAutf6ZINYv5+4TG3VETWVUGFixQHcuak=;
 b=tLBOr9wUBkhPXAsBErczu7jI2Hf9tNdIWN6672jBjWl09l6oei62gKrRcjRCmtpBdO
 QYiUTa+9xRSvvG8KLnpbFIBIDKVHeHpmgD9+0dHxFCZtzs5AoXBWJKpcXFs4NHQI/ZyO
 JY0AZHS/d6lNQC1igzWeSohKzeYh4+mSSg6NKx2SZgSnSBJYAI1iGGBoxcPeUlYwDHNM
 zTqI4igELqHbQ15BCq0qGXaKwu1T1UlxIutjyWeatLZSEJW+Pf0evVabkYV+lJQ0J1fA
 LVBHw38hevuwNm3GPP5vgrhCJlMnCfVbwLCekONEpzMRrw6JPLeu17PiEGMxOPtrrGF0
 udFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uUhhwavoelOAutf6ZINYv5+4TG3VETWVUGFixQHcuak=;
 b=W+QxDeMyzfoLoz9LUlmSGZf9Se67Y8y0rK04WLrIL/AIfY3o9FtslCjBLK/jlNGbjM
 2axdqvWpiWXDNTNzzQeyo3xXRq7q2tYoEVOwtqfTEMxSHYTl7w2Xc/Z8wBQSAWsBrIa8
 RV4xoBdvF9IB4UfmFh2bDlyzUJOLgcv5vR5RCktbO8UvgCdwBFJkIhzU93q5+Ei5vNK1
 yJJ6S+GNb7y3g4tZ5y5GWE4bZcu3T4KKKNZ5Z3jxa2omlR3TtioWFv1DukguJAQbNzHu
 2yATqRsrpEDWHXug/HFXeK+fmmnkT++uXnK9d3d3E+7DFx+9Mzb+ESEQbMUMRdCg9q9H
 QjYQ==
X-Gm-Message-State: AOAM532MuE02X7O4JGegzks39UE/KutJ2/Iz01qj2A5V35EqQB+HiPDD
 4aHJhws4IPToJUwKXs/0KpsdsKA100EUqT7f
X-Google-Smtp-Source: ABdhPJxqGZgcn+OKL/uY1gOsVDHVyOtHRA3JfORbCy0PEaxBIutufAWEsMK8sV0BmV2FQIYFhylzBg==
X-Received: by 2002:a17:906:c1d7:b0:6e8:4f18:fede with SMTP id
 bw23-20020a170906c1d700b006e84f18fedemr19124588ejb.95.1649769789466; 
 Tue, 12 Apr 2022 06:23:09 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:09 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:38 +0300
Message-Id: <20220412132245.2148794-2-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 1/8] net: netlink: add NLM_F_BULK
	delete request modifier
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Add a new delete request modifier called NLM_F_BULK which, when
supported, would cause the request to delete multiple objects. The flag
is a convenient way to signal that a multiple delete operation is
requested which can be gradually added to different delete requests. In
order to make sure older kernels will error out if the operation is not
supported instead of doing something unintended we have to break a
required condition when implementing support for this flag, f.e. for
neighbors we will omit the mandatory mac address attribute.
Initially it will be used to add flush with filtering support for bridge
fdbs, but it also opens the door to add similar support to others.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/netlink.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
index 4c0cde075c27..855dffb4c1c3 100644
--- a/include/uapi/linux/netlink.h
+++ b/include/uapi/linux/netlink.h
@@ -72,6 +72,7 @@ struct nlmsghdr {
 
 /* Modifiers to DELETE request */
 #define NLM_F_NONREC	0x100	/* Do not delete recursively	*/
+#define NLM_F_BULK	0x200	/* Delete multiple objects	*/
 
 /* Flags for ACK message */
 #define NLM_F_CAPPED	0x100	/* request was capped */
-- 
2.35.1

