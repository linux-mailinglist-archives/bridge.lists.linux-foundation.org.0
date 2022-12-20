Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66805652349
	for <lists.bridge@lfdr.de>; Tue, 20 Dec 2022 15:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D8474171C;
	Tue, 20 Dec 2022 14:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D8474171C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=AG4SyWL1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 058m-MvqFHd8; Tue, 20 Dec 2022 14:59:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 410DF41722;
	Tue, 20 Dec 2022 14:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 410DF41722
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7702BC0077;
	Tue, 20 Dec 2022 14:59:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40927C002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 14:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 182D0600B4
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 14:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182D0600B4
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AG4SyWL1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lt2Ah3TxDgk4 for <bridge@lists.linux-foundation.org>;
 Tue, 20 Dec 2022 14:59:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3362060ADA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3362060ADA
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 14:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671548364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=loRMWcnY9Zc3gsu659uSvWGLXQHgBLYyUdhTzCHdJL4=;
 b=AG4SyWL1LYL50s1w2LAPdx5YYqiZDvwdgENNggbb5PKzs+vKDq1IIGlL6nnknsuSYlo9KB
 iGP9E8FCh/ituQVH5w9tyvOU7/IiNwA3eoPfhuMtSyng4cYcnCVBFAMh9QyRA+Cetl+vlU
 /INDxGEvHKdTURpnB49hJlJ8k7pskXc=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-556-mY8utmb3MIWLGe7EOVUD1Q-1; Tue, 20 Dec 2022 09:59:21 -0500
X-MC-Unique: mY8utmb3MIWLGe7EOVUD1Q-1
Received: by mail-qk1-f200.google.com with SMTP id
 ay43-20020a05620a17ab00b006fa30ed61fdso9408382qkb.5
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 06:59:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=loRMWcnY9Zc3gsu659uSvWGLXQHgBLYyUdhTzCHdJL4=;
 b=QurKh8pusRQGp0yPV9Oq6yuo6XHrNO1jnGQjx4E7A3buxFBxo57xm7lJF0XcMRKw/l
 F9FSvMoTpLQDl6d2Qnqoh8GY44um1xzVldeHR+T4mNbKDTXU0BzS7aWczaXxt1mS7oUS
 CaD7NUDSr6Lxyuud467FbAT939PMj1bD9hzYwMcrZEKUriE+ecX3xAzV2julV0H3IyCi
 xX7H9Q97bc5oAR6mVWG7n3qhEQYfqTmitKvB6aUlqGin57+jF4e41z0vFFKVpo50WFl9
 QKxPUV2jeGL4RFfTVUeevWB3RTX7QJ1mEe7dx3mj7+XKDez9iikG1TEEGciiHImf8p7b
 TnOw==
X-Gm-Message-State: ANoB5pmQt2w6yBqScrzlxbQG/HcRn4HTQuJ5w+DzrQYpTCKDEAwqfvzX
 YDk1YeuTcZbjoZHHaaYM6fnIN0Sy63ps6EL//zHTh8h+c3XNUWkbkrBQN1hIacsn2RZt94gM9oT
 6nNgHRhOkfBYTYxSrluFT6uPyj4XauW8=
X-Received: by 2002:ac8:5c03:0:b0:3a6:6181:f4ef with SMTP id
 i3-20020ac85c03000000b003a66181f4efmr82323453qti.60.1671548360859; 
 Tue, 20 Dec 2022 06:59:20 -0800 (PST)
X-Google-Smtp-Source: AA0mqf50BUcQSQHcEJygADcQA4vzlJrzyssyNaJu8beb5GdIxP7FEGhAjq5wBqu7xFkLkoDZIUDEVw==
X-Received: by 2002:ac8:5c03:0:b0:3a6:6181:f4ef with SMTP id
 i3-20020ac85c03000000b003a66181f4efmr82323421qti.60.1671548360597; 
 Tue, 20 Dec 2022 06:59:20 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-101-173.dyn.eolo.it.
 [146.241.101.173]) by smtp.gmail.com with ESMTPSA id
 bn1-20020a05620a2ac100b006fafc111b12sm8962497qkb.83.2022.12.20.06.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Dec 2022 06:59:19 -0800 (PST)
Message-ID: <367438a5296d6b43d92287289f44f0e1dfe01d1a.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Joy Gu <jgu@purestorage.com>,
 bridge@lists.linux-foundation.org
Date: Tue, 20 Dec 2022 15:59:15 +0100
In-Reply-To: <05d630bf-7fa8-4495-6345-207f133ef746@blackwall.org>
References: <20221220024807.36502-1-jgu@purestorage.com>
 <05d630bf-7fa8-4495-6345-207f133ef746@blackwall.org>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net, joern@purestorage.com
Subject: Re: [Bridge] [PATCH] net: bridge: mcast: read ngrec once in
	igmp3/mld2 report
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

On Tue, 2022-12-20 at 12:13 +0200, Nikolay Aleksandrov wrote:
> On 20/12/2022 04:48, Joy Gu wrote:
> > In br_ip4_multicast_igmp3_report() and br_ip6_multicast_mld2_report(),
> > "ih" or "mld2r" is a pointer into the skb header. It's dereferenced to
> > get "num", which is used in the for-loop condition that follows.
> > 
> > Compilers are free to not spend a register on "num" and dereference that
> > pointer every time "num" would be used, i.e. every loop iteration. Which
> > would be a bug if pskb_may_pull() (called by ip_mc_may_pull() or
> > ipv6_mc_may_pull() in the loop body) were to change pointers pointing
> > into the skb header, e.g. by freeing "skb->head".
> > 
> > We can avoid this by using READ_ONCE().
> > 
> > Suggested-by: Joern Engel <joern@purestorage.com>
> > Signed-off-by: Joy Gu <jgu@purestorage.com>
> > ---
> >  net/bridge/br_multicast.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> 
> I doubt any compiler would do that (partly due to the ntohs()). 

I would say that any compiler behaving as described above is buggy, as
'skb' is modified inside the loop, and the header pointer is fetched
from the skb, it can't be considered invariant.

> If you have hit a bug or
> seen this with some compiler please provide more details, disassembly of the resulting
> code would be best.

Exactly. A more detailed description of the issue you see is necessary.
And very likely the proposed solution is not the correct one.

Cheers,

Paolo

