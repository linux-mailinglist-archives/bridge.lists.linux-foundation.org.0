Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A4A6EA576
	for <lists.bridge@lfdr.de>; Fri, 21 Apr 2023 10:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D795180A06;
	Fri, 21 Apr 2023 08:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D795180A06
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=lungnl9b
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wycxiNrrTsI7; Fri, 21 Apr 2023 08:01:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 64F9982178;
	Fri, 21 Apr 2023 08:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64F9982178
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BAC55C0090;
	Fri, 21 Apr 2023 08:01:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 097C7C002A
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D81276009C
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D81276009C
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=lungnl9b
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5dhD0clhLNh for <bridge@lists.linux-foundation.org>;
 Wed, 12 Apr 2023 01:33:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 434C960F5F
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 434C960F5F
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:33:16 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id
 d2e1a72fcca58-6323dca4857so750710b3a.1
 for <bridge@lists.linux-foundation.org>; Tue, 11 Apr 2023 18:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681263195;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7njyoKzJ51EO5yB+UcKz0vkCXJHgabT0CFKCHzXCCZ8=;
 b=lungnl9bBU45ypPeW/o26colK9OVYNlA2wNxRmSwtzL1no3pCX5s3hsIg4VaWaB15b
 6hrAomvj/CNKp23ARz26ojNunMAK1WYBeJajGFinAztS3AbzNdW3WjN38G2ElhIVBTFD
 WNhIbwI/xday4ZjEzcW6npCAUs0jn6PZ1s78GMQv243LntVclVuJtl/fH+dNdav8/fSi
 zxVPayjMECoCqAoPW0Du8WHFAlfojTmmw3KoxLxlNdPYFHCzQBerjmXxdJNgOBc9pF3U
 sginLIBFiZbq8UC4GotlOQDm8SYUI7UP9a25seCRSWgLhn2+iY7q4zIZH1zjiGMeuVDN
 fvow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681263195;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7njyoKzJ51EO5yB+UcKz0vkCXJHgabT0CFKCHzXCCZ8=;
 b=2YL4ziTEG9Z51KAsHdrYiYUqaVPXEU0bMIigdU5Gz7tgSdr7qPl1s6uaqLwX3n4kBm
 MClGAq/x6LVB3isyHIxxsC6N3JFuG+OHF9iPrN9WmaMrXGCKZ3zbKnBXWnodf3ZZ9Y/r
 5VZ7fQCNZGZa8rtXctzwBogqTeXZcMq1SAhRGKjIPAn0qtIf/i0ZjJtg9VEHUvc8r26p
 s5pgjAZGORnE4F7YwsV2gNtLpfYAhGiJIcYGX+59U6cxaztiXkjarhSO/bPM0T5KNwwx
 8OP85XfBlmCyd+BzM0map1O7buIebM3X0lpYyLgfzr2uzm2CUrC7VIW9UxL+pgZliAcZ
 fkvw==
X-Gm-Message-State: AAQBX9dqBhLHd6I62bDTE0uUqLckAvlaJHpCCBdDwnIyUnppSz0ESrMe
 Ikm46JWjmwZb8C7QSpvM4c8=
X-Google-Smtp-Source: AKy350blayWcCnidBV/2PjbeRjzv6tJQpofKRYxMY/itSWcC00zFTUYtRazFn10QP2k0t0S+JGaixA==
X-Received: by 2002:aa7:9e81:0:b0:638:dc83:2051 with SMTP id
 p1-20020aa79e81000000b00638dc832051mr860091pfq.32.1681263195558; 
 Tue, 11 Apr 2023 18:33:15 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 m9-20020aa78a09000000b00639fc7124c2sm3672126pfa.148.2023.04.11.18.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 18:33:15 -0700 (PDT)
From: xu xin <xu.xin.sc@gmail.com>
X-Google-Original-From: xu xin <xu.xin16@zte.com.cn>
To: kuba@kernel.org
Date: Wed, 12 Apr 2023 09:33:10 +0800
Message-Id: <20230412013310.174561-1-xu.xin16@zte.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230407200319.72fd763f@kernel.org>
References: <20230407200319.72fd763f@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 21 Apr 2023 08:01:06 +0000
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 yang.yang29@zte.com.cn, edumazet@google.com, zhang.yunkai@zte.com.cn,
 xu.xin16@zte.com.cn, jiang.xuexin@zte.com.cn, roopa@nvidia.com,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net/bridge: add drop reasons for
	bridge forwarding
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

>On Thu, 6 Apr 2023 19:30:34 +0800 (CST) yang.yang29@zte.com.cn wrote:
>> From: xu xin <xu.xin16@zte.com.cn>
>> 
>> This creates six drop reasons as follows, which will help users know the
>> specific reason why bridge drops the packets when forwarding.
>> 
>> 1) SKB_DROP_REASON_BRIDGE_FWD_NO_BACKUP_PORT: failed to get a backup
>>    port link when the destination port is down.
>> 
>> 2) SKB_DROP_REASON_BRIDGE_FWD_SAME_PORT: destination port is the same
>>    with originating port when forwarding by a bridge.
>> 
>> 3) SKB_DROP_REASON_BRIDGE_NON_FORWARDING_STATE: the bridge's state is
>>    not forwarding.
>> 
>> 4) SKB_DROP_REASON_BRIDGE_NOT_ALLOWED_EGRESS: the packet is not allowed
>>    to go out through the port due to vlan filtering.
>> 
>> 5) SKB_DROP_REASON_BRIDGE_SWDEV_NOT_ALLOWED_EGRESS: the packet is not
>>    allowed to go out through the port which is offloaded by a hardware
>>    switchdev, checked by nbp_switchdev_allowed_egress().
>> 
>> 6) SKB_DROP_REASON_BRIDGE_BOTH_PORT_ISOLATED: both source port and dest
>>    port are in BR_ISOLATED state when bridge forwarding.
>
>> @@ -338,6 +344,33 @@ enum skb_drop_reason {
>>  	 * for another host.
>>  	 */
>>  	SKB_DROP_REASON_IPV6_NDISC_NS_OTHERHOST,
>> +	/** @SKB_DROP_REASON_BRIDGE_FWD_NO_BACKUP_PORT: failed to get a backup
>> +	 * port link when the destination port is down.
>> +	 */
>
>That's not valid kdoc. Text can be on the same line as the value only
>in one-line comments. Otherwise:
>	/**
>	 * @VALUE: bla bla bla
>	 *	more blas.
>	 */
>

Ok, I didn't notice that.

>> +static inline bool should_deliver(const struct net_bridge_port *p, const struct sk_buff *skb,
>> +					 enum skb_drop_reason *need_reason)
>>  {
>>  	struct net_bridge_vlan_group *vg;
>> +	enum skb_drop_reason reason;
>> 
>>  	vg = nbp_vlan_group_rcu(p);
>> -	return ((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
>> -		p->state == BR_STATE_FORWARDING && br_allowed_egress(vg, skb) &&
>> -		nbp_switchdev_allowed_egress(p, skb) &&
>> -		!br_skb_isolated(p, skb);
>> +	if (!(p->flags & BR_HAIRPIN_MODE) && skb->dev == p->dev) {
>> +		reason = SKB_DROP_REASON_BRIDGE_FWD_SAME_PORT;
>> +		goto undeliverable;
>> +	}
>> +	if (p->state != BR_STATE_FORWARDING) {
>> +		reason = SKB_DROP_REASON_BRIDGE_NON_FORWARDING_STATE;
>> +		goto undeliverable;
>> +	}
>> +	if (!br_allowed_egress(vg, skb)) {
>> +		reason = SKB_DROP_REASON_BRIDGE_NOT_ALLOWED_EGRESS;
>> +		goto undeliverable;
>> +	}
>> +	if (!nbp_switchdev_allowed_egress(p, skb)) {
>> +		reason = SKB_DROP_REASON_BRIDGE_SWDEV_NOT_ALLOWED_EGRESS;
>> +		goto undeliverable;
>> +	}
>> +	if (br_skb_isolated(p, skb)) {
>> +		reason = SKB_DROP_REASON_BRIDGE_BOTH_PORT_ISOLATED;
>> +		goto undeliverable;
>> +	}
>> +	return true;
>> +
>> +undeliverable:
>> +	if (need_reason)
>> +		*need_reason = reason;
>> +	return false;
>
>You can return the reason from this function. That's the whole point of
>SKB_NOT_DROPPED_YET existing and being equal to 0.
>

If returning the reasons, then the funtion will have to be renamed because
'should_deliever()' is expected to return a non-zero value  when it's ok to
deliever. I don't want to change the name here, and it's better to keep its
name and use the pointer to store the reasons.

>Which is not to say that I know whether the reasons are worth adding
>here. We'll need to hear from bridge experts on that.
