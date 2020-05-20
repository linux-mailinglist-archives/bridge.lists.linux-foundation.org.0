Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3961DB8AD
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 17:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A4AA86E4C;
	Wed, 20 May 2020 15:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9_JC0VnrvrLy; Wed, 20 May 2020 15:51:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEE6F86E5E;
	Wed, 20 May 2020 15:51:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AE328C0176;
	Wed, 20 May 2020 15:51:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C378C0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B6B586E5E
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwCONvCJd9kY for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 15:51:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4968C86E24
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:51:04 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id nu7so1485054pjb.0
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 08:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PGt5BLdFYxU6z1cqTJIqi+js4tZYCy5XiqwrbJue7TA=;
 b=VBDVFrk6oKnVNDIw8raagKq5a8eJuK45dEaNEJhAanbz91rxFKnrQTllLBUsf1VmYC
 NoqgnZ2zzAHzxt/ftq82ycjy2pqQDQCGwnNPuNsAedzasPPDynnRSobblUVi2uAjP81x
 dloti4nJ8TCEoIefrSsNa+yBd5be88qsolNL9eu+S30O7URyhU7bdMrCvhOIgp/x2nh8
 VaJJHi5duJo24MpKRBmNnqCLc/OoeNEceeU7MEBsNfXTkm9fRGgI4MpAQZUCvNZfpOjZ
 aj/YNjC383Z9TeAONWCxS25M+59WYmG0oUtYGird2unKBRZuTIzj3PUiAQJTAtNiMlh/
 rSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PGt5BLdFYxU6z1cqTJIqi+js4tZYCy5XiqwrbJue7TA=;
 b=dQZkDTac3xiloG4mjUU4r2yi6IQL/F9s9P0mdTs4J69L1AVUV2EkP4gmK7ppp2tQlv
 OOyI8C3nmRbmGlV3qqoPgGHUwkcO9swVoH18mkUvS4mlS0b34YVoZfhOo6lpJqIbAFgI
 G+esRRB9WiSV6dWK7pDBN60Q6kXcZTCYft6RBOwi8FrDZjNfaTA+jGbVhqTCZVDehcEA
 EAnmIISd5JTevYUk4YYLKyvHkXUf4o64v3XW9nr2nh7AckTSqO/9SO4rnbT81xhXmP4S
 D2FGVdL4Cw+EGm29kgDQDZObq4LqKTRTRqtm4MzGWW0tbnzMlqS1DyQjuVPRHAfKZG12
 fJhg==
X-Gm-Message-State: AOAM531W6P6hai/j1LGab7zbxxKpMvNprSALGinfBG/TGPo1J6/xbQif
 sTrGpqidCmuxE8LB4JkuBPvxiQ==
X-Google-Smtp-Source: ABdhPJx04CU5osC8N8WwltpLcZT/kJVkSQfwexK2sh11BxrJR6el86m4PMpCODbiTjaQgxTmnH5d/A==
X-Received: by 2002:a17:902:9342:: with SMTP id
 g2mr5279742plp.326.1589989863733; 
 Wed, 20 May 2020 08:51:03 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id w19sm2343277pfc.95.2020.05.20.08.51.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:51:03 -0700 (PDT)
Date: Wed, 20 May 2020 08:50:54 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200520085054.2031ad8a@hermes.lan>
In-Reply-To: <20181116165001.30896-1-nikolay@cumulusnetworks.com>
References: <20181114172703.5795-1-nikolay@cumulusnetworks.com>
 <20181116165001.30896-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v3] net: bridge: fix vlan stats
 use-after-free on destruction
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

On Fri, 16 Nov 2018 18:50:01 +0200
Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

> +	if (v->priv_flags & BR_VLFLAG_PER_PORT_STATS)
>  		free_percpu(v->stats);

Why not not v->stats == NULL as a flag instead?

Then the fact that free_percpu(NULL) is a Nop would mean less code
in the bridge driver.
