Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C1D5D7EC
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:52:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2139D162E;
	Tue,  2 Jul 2019 21:49:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45C9D21B7
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:13:24 +0000 (UTC)
X-Greylist: delayed 00:26:14 by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98372836
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 21:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124;
	h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=r02h9MTl0BX08PCqISfFd+97NJJEJLJZHaEFTSLVzmQ=;
	b=cz3FRZpIXEdBacZ9X8yxYsqKdd
	3TwMjwPk+OiCunEKlvtvOfTpo6KkvmAV9eMTXyWqDvXf0no9JJEeu7mj5DmuY5uiquynQG+OGpTBH
	9uutB4Lht+UCDAUOwmbgVhpE6NQzm4En/OSanGKvCRVKwVgA87AOB4HRR/zYvQNtgiCk=; 
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
	(envelope-from <andrew@lunn.ch>)
	id 1hiPg9-0000GT-HO; Tue, 02 Jul 2019 22:47:05 +0200
Date: Tue, 2 Jul 2019 22:47:05 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190702204705.GC28471@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org
Subject: [Bridge] Validation of forward_delay seems wrong...
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

Hi Nikolay

The man page says that the bridge forward_delay is in units of
seconds, and should be between 2 and 30.

I've tested on a couple of different kernel versions, and this appears
to be not working correctly:

ip link set br0 type bridge forward_delay 2
RTNETLINK answers: Numerical result out of range

ip link set br0 type bridge forward_delay 199
RTNETLINK answers: Numerical result out of range

ip link set br0 type bridge forward_delay 200
# 

ip link set br0 type bridge forward_delay 3000
#

ip link set br0 type bridge forward_delay 3001
RTNETLINK answers: Numerical result out of range

I've not checked what delay is actually being used here, but clearly
something is mixed up.

grep HZ .config 
CONFIG_HZ_PERIODIC=y
# CONFIG_NO_HZ_IDLE is not set
# CONFIG_NO_HZ_FULL is not set
# CONFIG_NO_HZ is not set
CONFIG_HZ_FIXED=0
CONFIG_HZ_100=y
# CONFIG_HZ_200 is not set
# CONFIG_HZ_250 is not set
# CONFIG_HZ_300 is not set
# CONFIG_HZ_500 is not set
# CONFIG_HZ_1000 is not set
CONFIG_HZ=100

Thanks
	Andrew
