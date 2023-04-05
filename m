Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E096D7CC2
	for <lists.bridge@lfdr.de>; Wed,  5 Apr 2023 14:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1326340BAC;
	Wed,  5 Apr 2023 12:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1326340BAC
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=jusst.de header.i=@jusst.de header.a=rsa-sha256 header.s=dkim header.b=TX2cBFmb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGZ5dKluckuH; Wed,  5 Apr 2023 12:36:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6CF6C40BAA;
	Wed,  5 Apr 2023 12:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CF6C40BAA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 165F6C0089;
	Wed,  5 Apr 2023 12:36:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 217D3C002F
 for <bridge@lists.linux-foundation.org>; Wed,  5 Apr 2023 12:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4A9681F47
 for <bridge@lists.linux-foundation.org>; Wed,  5 Apr 2023 12:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4A9681F47
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jusst.de header.i=@jusst.de
 header.a=rsa-sha256 header.s=dkim header.b=TX2cBFmb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LaTKh3tdhDZA for <bridge@lists.linux-foundation.org>;
 Wed,  5 Apr 2023 12:36:41 +0000 (UTC)
X-Greylist: delayed 00:09:55 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E04D581F29
Received: from mail.jusst.de (mail.jusst.de [94.16.123.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E04D581F29
 for <bridge@lists.linux-foundation.org>; Wed,  5 Apr 2023 12:36:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 772E754C28B; Wed,  5 Apr 2023 14:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jusst.de; s=dkim;
 t=1680697452; h=from:subject:date:message-id:to:mime-version:content-type:
 content-transfer-encoding:content-language;
 bh=INuSPqZWxJYEI4jKMV7zGzhUZ5jYXb1XWxD6oaynKVw=;
 b=TX2cBFmbxN9/W7EAaELqbKj10880M39Gn/l58TDnmBnUa7lf/6sE84QbuidDDpnRYxnobC
 BIpIFJ6agOVaspCp2CAOYbV95Xi2CkZ3vkn1Phj6h/xelSBwqqr5zLSxusQlrlBaDngNvE
 DtDubxYFWOuhIXhUCG7GbYy/TdNv5sH2DQhwRyiVPFE/T6PlCG9BMO9YauNDPDk3Fr7zHW
 mBvrw+tHZ57w12WCFhYj3QQasiLPbw1g7Y+ROA67HZ4nTkh7vdqbR1Nm/6yPo897k2VxrB
 r7gM62c+NgpRJq2brM5o3hZL/IfLyVtlvx4I16Ql6YHiEQ7B1fJmRfRo122vcQ==
Message-ID: <9faba0b5-b7e5-5779-4249-1e01419e51c5@jusst.de>
Date: Wed, 5 Apr 2023 14:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org
Content-Language: en-US
Organization: jusst.engineering
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
Subject: [Bridge] VLAN-aware multicast querier after if link up
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
From: Dennis Hamester via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Dennis Hamester <dhamester@jusst.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi Nikolay,

I'd like your input on an issue I'm running into at the moment.

I setup a bridge to do multicast querying for some vid. This then does 
not work for ports that come up later. It works only for those ports 
that were already up when I set the global vlan options.

Debugging through the kernel I can see that the timers are simply never 
started. Unless I disable and re-enable the querier for that particular vid.

Admittedly, I'm working with 5.15 at the moment. But even on mainline, I 
do not see any relevant changes that would make this work.

I have a simple-ish patch, but I'm wondering whether I'm missing 
something? Is maybe some action from userspace expected when a port 
comes up?

Best
Dennis Hamester


-- 
Dennis Hamester
Software Engineering Lead

jusst.engineering
Wrangelstraße 111
D - 20253 Hamburg

tel: +49 40 521 600 10
fax: +49 40 1800 86 76
mobil: +49 152 310 698 27
mail: dhamester@jusst.de

https://jusst.engineering/

jusst technologies GmbH, Ohlstedter Straße 12, D - 22397 Hamburg
Vertretungsberechtigte Geschäftsführer: Julian Scheel, Sebastian Scheel
Registergericht: Amtsgericht Hamburg
Registernummer: HRB 94300

-

Confidentiality notice:

The content of this email is confidential.
If you are not the intended addressee, or if the information provided in 
this
email or in its attachments is evidently not destined for you, please notify
us immediately and delete the message received in error including all its
attachments. Any unauthorized review, processing, distribution, copying,
storage, printout or other use of this message or its attachments is 
prohibited.
