Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA70D6AD4
	for <lists.bridge@lfdr.de>; Mon, 14 Oct 2019 22:33:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AACD52280;
	Mon, 14 Oct 2019 20:33:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D80102271
	for <bridge@lists.linux-foundation.org>;
	Mon, 14 Oct 2019 20:33:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C78A6CE
	for <bridge@lists.linux-foundation.org>;
	Mon, 14 Oct 2019 20:33:35 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id i16so18532376wmd.3
	for <bridge@lists.linux-foundation.org>;
	Mon, 14 Oct 2019 13:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=RL+qRYT6Goj58mWMl95r8FGMxjYOCcO4sf1iNuaKh9U=;
	b=dMpX4osW+Gizh9wuXThIULR+SMojXNXSVsVvoWi5OvVzxXiLGj195gyZ0EdA3ugmnf
	pNJa9ZRwkxgN96umOkiqmG22sEeEnHfHxbwOCABF932ETOIQozeKKpwV4kOYVqDZdYpg
	HCazf1SLvF8mNO3JApRICKFlRopM9A0+MQ9KKpJvlyBDThEZ2i3z8fb3COic55OAQtJM
	8uPRQDu4QUAbItWuMpA1YNQofcuzZx5hpVW/0/UlNHEzP8FGK2ePDh9KDJ/pasgRXdbd
	qmhX6qiIJmhColRpPsyAtExuKOWc9pX84aDJFFd9WvWi3x/EZikS4XryeAB1saHR+0vu
	jghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=RL+qRYT6Goj58mWMl95r8FGMxjYOCcO4sf1iNuaKh9U=;
	b=j2XBHIokJoOna+c/AvESGraUURYGtdeHZO6Ei/DjmN5X6S8ur+nKQoAhvJOJ3m+cet
	cYmXF8IFDxOxtL0wuwvsUiV4Oxx5B6eyzrrR1zuViyJIQJgfRl8xTH7U4n0YAZi94nuV
	i+4a2pOhXEgcq3ia8vzOzI9N8CMsP2SqHVljHGw62edWt5cjBC+JAK7SG3uEpZ63aGwv
	q6372f7pHDrJrjqVOmRYWasran4UdmtXqtd1bYvT1sg1Mh94VdRz1wnBQUR5WXvoM9WR
	8vuP2UgBurfoViW3Gag6CxeuG+yQrlnA+1ptycCnhfDwADOV9LzznI6L8GdKFJvABB0O
	onoQ==
X-Gm-Message-State: APjAAAVa75kw+MkknNr5KyYF7aWe4KrADdzpX5geVA7so0PPjHn0QuIZ
	FPuYFgyM1CR4k456jtjby+73cl5dP/IUxuI9AXw=
X-Google-Smtp-Source: APXvYqzXLid+PDcZKtgZAJnd+DnjNjmGs2LNAqZ3GOO2Khpo/muwpEqr2khANBlfQMDwxJ+eHJscGM6cBUWo4kOCBzY=
X-Received: by 2002:a1c:2d85:: with SMTP id
	t127mr15762182wmt.109.1571085213841; 
	Mon, 14 Oct 2019 13:33:33 -0700 (PDT)
MIME-Version: 1.0
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 14 Oct 2019 22:33:22 +0200
Message-ID: <CAFLxGvwnOi6dSq5yLM78XskweQOY6aPbRt==G9wv5qS+dfj8bw@mail.gmail.com>
To: netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, Greg KH <gregkh@linuxfoundation.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org
Subject: [Bridge] Bridge port userspace events broken?
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

Hi!

My userspace needs /sys/class/net/eth0/brport/group_fwd_mask, so I set
up udev rules
to wait for the sysfs file.
Without luck.
Also "udevadm monitor" does not show any event related to
/sys/class/net/eth0/brport when I assign eth0 to a bridge.

First I thought that the bridge code just misses to emit some events but
br_add_if() calls kobject_uevent() which is good.

Greg gave me the hint that the bridge code might not use the kobject model
correctly.

Enabling kobjekt debugging shows that all events are dropped:
[   36.904602] device eth0 entered promiscuous mode
[   36.904786] kobject: 'brport' (0000000028a47e33): kobject_uevent_env
[   36.904789] kobject: 'brport' (0000000028a47e33):
kobject_uevent_env: filter function caused the event to drop!

If I understood Greg correctly this is because the bridge code uses
plain kobjects which
have a parent object. Therefore all events are dropped.

Shouldn't brport be a kset just like net_device->queues_kset?

-- 
Thanks,
//richard
