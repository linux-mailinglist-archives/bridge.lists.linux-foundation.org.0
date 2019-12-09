Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7584C117996
	for <lists.bridge@lfdr.de>; Mon,  9 Dec 2019 23:42:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CA6086840;
	Mon,  9 Dec 2019 22:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rE3NMOliv5UH; Mon,  9 Dec 2019 22:42:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81AD186838;
	Mon,  9 Dec 2019 22:42:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 66C26C1796;
	Mon,  9 Dec 2019 22:42:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C44E7C0881
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 22:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD68F87E40
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 22:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3bP-qQkjq5e for <bridge@lists.linux-foundation.org>;
 Mon,  9 Dec 2019 22:42:46 +0000 (UTC)
X-Greylist: delayed 00:08:14 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40AA587D8B
 for <bridge@lists.linux-foundation.org>; Mon,  9 Dec 2019 22:42:46 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id b9so7442412pgk.12
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 14:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=21rRHFPvjZK3p9sHxqd95tcXX0jutqdzXHdUpefK27I=;
 b=xLXQN/34gfNkqvPZgEQz5Mq2sz3JTIRFKKDEMrDkmN9SNnGVD53BM76EFsQtm821z3
 hm9bSpkCxRvaWD1KfrbJ7hlkJ8VA5ZlaTFYQk0XbDUXYYMx5rCg1d1ikljOOpsjdJkPS
 hjHSCCvznTKb6zNNsxcgeIfoCwMyt81+ZLXU2qboyA2JCpkA+mLfutk1hi1BV6IeDk6L
 TmiMYvyJqB0bK7OVhFYbnhwGPtWwSC+FB1Pek0CPLTRBaaC3dplL3ozbtwJj6mBgwOvD
 ETQiaILMphm0U2UVlSF6pcFu87BIJo7ISADkLLAvGwQJQtR7oSc3LS19I6lhW8NQnfIV
 8nmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=21rRHFPvjZK3p9sHxqd95tcXX0jutqdzXHdUpefK27I=;
 b=rQPo7LJfuFVL5KwW1vHq2jAD8x3xX/TWH9Q+7r6P7tlQRHhCsvQOw9fIDiS/bHQ6KQ
 WlbdhQCUcSK/0on7s0tmQ/CLqaFSNreLgjUeKXn5fKOuO44kyj4Zp8zbxLiygMcd2fjd
 I87VDQDULC7x56YaQAfaAZk6yhV2fEyUN4+tWzCv/qpF/xRXHC5miVZOrmm3JJLki8V5
 rA8RFmRneBVHh2rTxwXWHE+dJz11V2wxrFwGnfZa2N9Z5jc42el4Fewg7uFJhLArIL+Y
 Hi+zOLwBmrTzP5d8UkEKyAXuYLA6luQ38MP4w6EJljUbNABOx7Vb1Y7Mk+gYQkt7WgIH
 dI6A==
X-Gm-Message-State: APjAAAXMqst7iwtYiDGEb16pnFh56wI2xiHs2mi3wCWs//lKgleUV1O4
 lnrr3m576yykKEyAfPxOib3m7sbS5uI8zQ==
X-Google-Smtp-Source: APXvYqx5Y6yN8qanz5HKz3fNJcveqsP9bTjS52aSSqGDmRYhlpXPSa30Muh8LSeXdJMwe2m6+QFIWw==
X-Received: by 2002:a63:444b:: with SMTP id t11mr20591062pgk.72.1575930871906; 
 Mon, 09 Dec 2019 14:34:31 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id w8sm460267pfn.186.2019.12.09.14.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 14:34:31 -0800 (PST)
Date: Mon, 9 Dec 2019 14:34:23 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191209143423.7acb2f4b@hermes.lan>
In-Reply-To: <20191209211841.1239497-2-vivien.didelot@gmail.com>
References: <20191209211841.1239497-1-vivien.didelot@gmail.com>
 <20191209211841.1239497-2-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH iproute2] iplink: add support for STP xstats
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

On Mon,  9 Dec 2019 16:18:41 -0500
Vivien Didelot <vivien.didelot@gmail.com> wrote:

> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 31fc51bd..e7f2bb78 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h

These headers are semi-automatically updated from the kernel.
Do not make changes here.
