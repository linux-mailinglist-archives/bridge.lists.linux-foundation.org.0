Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 661638DE7B
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 22:11:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D4C57DB6;
	Wed, 14 Aug 2019 20:11:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E52EAC90
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 20:11:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 374928D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 20:11:42 +0000 (UTC)
Date: Wed, 14 Aug 2019 22:11:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1565813500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references;
	bh=zwP/DJWHFexvMmej3C7q8t73rgsDcQJ5forpfODbiYo=;
	b=Wh4qqA7vCxQpUVySXP5/KuHzSBqJSgf9AR59887R9mTCCnFBi1RcUfuYiKzOaQMqI99rni
	MGKK/4IBAbluIo1a7jglf3Q5jLvRAGPmFszrafNVKMYXf4RjuVgaPKWm4mH6f08WHVmipF
	EX0d2Uu/BlzEkQ6U7V9pb78f1gVMdn114PSmdyQoOBIy8Tbt7j+cbTzc9pEP5J1oupUUTJ
	7wkgvJoJDQo48fnme7UkckC6yYMSyYqJF2hZItQzV1XQN8ZapY3p0S/aDOM3Hjyw5cY7Zt
	besvG8hGfznq60OxFz/B3Avvr2UFIEz6NGNTyCSq0j9ojtWdXPtWZIccZmidEA==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Patrick Ruddy <pruddy@vyatta.att-mail.com>
Message-ID: <20190814201138.GE2431@otheros>
References: <20190813141804.20515-1-pruddy@vyatta.att-mail.com>
	<20190813195341.GA27005@splinter>
	<43ed59db-9228-9132-b9a5-31c8d1e8e9e9@cumulusnetworks.com>
	<620d3cfbe58e3ae87ef1d5e7f2aa1588cac3e64a.camel@vyatta.att-mail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <620d3cfbe58e3ae87ef1d5e7f2aa1588cac3e64a.camel@vyatta.att-mail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
	s=2018; t=1565813500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references;
	bh=zwP/DJWHFexvMmej3C7q8t73rgsDcQJ5forpfODbiYo=;
	b=qihCM6s9ze8tehxUpnzLVgdt7g7o6RYeNS9XeldWr2nb9MPwxummIHe89tOuNTyVTieST+
	5rjhZw3zLU7Obm4WLknsMZAEQKBCcRKAL97MTn7phNJImoBuM68svPBr6LO5zVCxRXCcTs
	cSAivA9GwmjMRnAIpxYz4sjlX+9sesN9eXCTKwe3xoCvwi2+OddYccQZgnLcPsSdhJc1Pv
	kpSJeBWlExhd6YEXj2ZkdmP8QbG7cAL5apIv7mE6MgprYox0u3LV4HtfSfoRvQEBv2aBKl
	1uuzKoa8O6KXBZ4JD0eTIHiMuBa5/kbzIQJPiALIMNywEx4cD3AZWimV6fHHZA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1565813500; a=rsa-sha256; cv=none;
	b=ABKAmH5Hgr9zdqzy4nzvQm+PxfxRwuY0Xg/soQWt03/OhGShpxUA+UtzkyRA2bte8KVZTp
	cf01k0jrtY6GuHRRYBJNmby8IorlQJS4jFyq40a1PyPYTPDeNJKr/ccE8wmrT4pj32NTjR
	iDwwSTmHf/vxAj7I+afVXtlPaqCh+eohM2MSVQSINsMahM+5VqAG7gyu+tKIEMHiGteL9t
	8gibZkCZHZOVEQG2ScEFZjaSww/4/eAPNcRWMAHvKZKIukWUyLKQTryDROlP3K1pTRf3I/
	APo/Lz3PinhMlmxINF2JjIMazDkr1gouxMrvwfbUhcrUZHPHozrtPYH/ElvkPg==
ARC-Authentication-Results: i=1; ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue
	smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue
	smtp.mailfrom=linus.luessing@c0d3.blue
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Ido Schimmel <idosch@idosch.org>, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next] mcast: ensure L-L IPv6 packets are
 accepted by bridge
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Wed, Aug 14, 2019 at 05:40:58PM +0100, Patrick Ruddy wrote:
> The group is being joined by MLD at the L3 level but the packets are
> not being passed up to the l3 interface becasue there is a MLD querier
> on the network
> 
> snippet from /proc/net/igmp6
> ...
> 40   sw1             ff0200000000000000000001ff008700     1 00000004 0
> 40   sw1             ff020000000000000000000000000002     1 00000004 0
> 40   sw1             ff020000000000000000000000000001     1 0000000C 0
> 40   sw1             ff010000000000000000000000000001     1 00000008 0
> 41   lo1             ff020000000000000000000000000001     1 0000000C 0
> 41   lo1             ff010000000000000000000000000001     1 00000008 0
> 42   sw1.1           ff020000000000000000000000000006     1 00000004 0
> 42   sw1.1           ff020000000000000000000000000005     1 00000004 0
> 42   sw1.1           ff0200000000000000000001ff000000     2 00000004 0
> 42   sw1.1           ff0200000000000000000001ff008700     1 00000004 0
> 42   sw1.1           ff0200000000000000000001ff000099     1 00000004 0
> 42   sw1.1           ff020000000000000000000000000002     1 00000004 0
> 42   sw1.1           ff020000000000000000000000000001     1 0000000C 0
> 42   sw1.1           ff010000000000000000000000000001     1 00000008 0
> ...
> 
> the bridge is sw1 and the l3 intervace is sw1.1

What kind of interface is sw1.1 exactly? Is it a VLAN or a VRF
interface? Something else?

Could you also post the output of bridge mdb show?

Regards, Linus


PS: Also please include the bridge mailinglist in the future.
